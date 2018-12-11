using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Dynamic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace DataHelper
{
    public static class Query
    {
        private static string ConnectionString
        {
            get
            {
                return @"Data Source=.\SQLEXPRESS;Initial Catalog=MySolution;Integrated Security=True";
            }
        }
        public static List<T> QuerySet<T>(string sp,object Parameter) where T : class, new()
        {
            try
            {
                var result = new List<T>();
                using (var conn = new SqlConnection(ConnectionString))
                {
                    using (var cmd = new SqlCommand())
                    {
                        conn.Open();
                        cmd.CommandType = System.Data.CommandType.StoredProcedure;
                        cmd.CommandText = sp;
                        cmd.Connection = conn;
                        SqlCommandBuilder.DeriveParameters(cmd);
                        List<SqlParameter> Params = new List<SqlParameter>();
                        foreach (SqlParameter param in cmd.Parameters)
                        {
                            var val = Parameter.GetType().GetProperty(param.ParameterName.Replace("@", ""));
                            if (val != null)
                            {
                                param.Value = val.GetValue(Parameter) ?? DBNull.Value;
                            }
                            else
                            {
                                param.Value = DBNull.Value;

                            }

                        }
                        var reader = cmd.ExecuteReader();
                        while (reader.Read())
                        {
                            if (typeof(object) == typeof(T))
                            {
                                //Convert object to dynamic
                                result.Add(reader.ConvertToDynamicObject<T>());
                            }
                            else
                            {
                                //Convert object to my type (T)
                                result.Add(reader.ConvertToClass<T>());
                            }
                        }
                        reader.NextResult();
                        while (reader.Read())
                        {

                        }
                        foreach (var item in Parameter.GetType().GetProperties())
                        {
                            var propertyType = item.PropertyType;
                            if (propertyType.IsGenericType && propertyType.GetGenericTypeDefinition() == typeof(Nullable<>))
                            {
                                propertyType = propertyType.GetGenericArguments()[0];
                            }
                            try
                            {
                                var data = cmd.Parameters["@" + item.Name].Value;
                                if (data != DBNull.Value)
                                {
                                    item.SetValue(Parameter, Convert.ChangeType(data, propertyType), null);
                                }
                            }
                            catch (Exception)
                            {

                            }
                            
                        }

                        reader.Close();
                        conn.Close();
                    }
                }
                return result;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public static void Execute(string sp,object Parameter)
        {
            try
            {
                using (var conn = new SqlConnection(ConnectionString))
                {
                    using (var cmd = new SqlCommand())
                    {
                        conn.Open();
                        cmd.CommandType = System.Data.CommandType.StoredProcedure;
                        cmd.CommandText = sp;
                        cmd.Connection = conn;
                        SqlCommandBuilder.DeriveParameters(cmd);
                        List<SqlParameter> Params = new List<SqlParameter>();
                        foreach (SqlParameter param in cmd.Parameters)
                        {
                            var val = Parameter.GetType().GetProperty(param.ParameterName.Replace("@", ""));
                            if (val != null)
                                param.Value = val.GetValue(Parameter) ?? DBNull.Value;
                            else
                            {
                                param.Value = DBNull.Value;
                            }

                        }
                        cmd.ExecuteNonQuery();
                        foreach (var item in Parameter.GetType().GetProperties())
                        {
                            var propertyType = item.PropertyType;
                            if (propertyType.IsGenericType && propertyType.GetGenericTypeDefinition() == typeof(Nullable<>))
                            {
                                propertyType = propertyType.GetGenericArguments()[0];
                            }
                            var data = cmd.Parameters["@" + item.Name].Value;
                            if(data != DBNull.Value)
                            {
                                item.SetValue(Parameter, Convert.ChangeType(data, propertyType), null);
                            }
                        }
                        conn.Close();
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public static int ExecuteNonReader(this string sql, object Parameter)
        {
            try
            {
                using (var conn = new SqlConnection(ConnectionString))
                {
                    using (var cmd = conn.CreateCommand())
                    {
                        cmd.CommandText = sql;
                        conn.Open();
                        foreach (var param in cmd.CommandText.GetParameter())
                        {
                            SqlParameter sqlParameter = new SqlParameter();
                            sqlParameter.ParameterName = param;
                            sqlParameter.Value = Parameter.GetType().GetProperty(param.Replace("@", "")).GetValue(Parameter) ?? DBNull.Value;
                            cmd.Parameters.Add(sqlParameter);
                        }
                        return cmd.ExecuteNonQuery();
                    }
                }
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
            
        }
        private static T ConvertToClass<T>(this SqlDataReader record, T myClass = null) where T : class,new()
        {
            if (myClass == null)
                myClass = new T();
            for (int i = 0; i < record.FieldCount; i++)
            {
                foreach (var propertyInfo in typeof(T).GetProperties())
                {
                    if(propertyInfo.Name == record.GetName(i) && record.GetValue(i) != DBNull.Value)
                    {
                        propertyInfo.SetValue(myClass, System.Convert.ChangeType(record.GetValue(i), record.GetFieldType(i)));
                        break;
                    }
                }
            }
            return myClass;
        }
        private static List<string> GetParameter(this string sql)
        {
            var l = new List<string>();
            foreach (string param in sql.Split(' '))
            {
                if (param.StartsWith("@"))
                {
                    var result = l.FirstOrDefault(x => x == param);
                    if (result == null)
                        l.Add(param);
                }
            }
            return l;
        }
        private static T ConvertToDynamicObject<T>(this SqlDataReader record) where T : class, new()
        {
            var dyn = new ExpandoObject();
            var ar = (IDictionary<string, Object>)dyn;
            for (int i = 0; i < record.FieldCount; i++)
            {
                ar[record.GetName(i)] = record[record.GetName(i)];
            }
            return dyn as T;
        }
        public static List<T> ExecuteReader<T>(this string sql, object Parameter) where T : class, new()
        {
            try
            {
                var result = new List<T>();
                using (var conn = new SqlConnection(ConnectionString))
                {
                    using (var cmd = conn.CreateCommand())
                    {
                        cmd.CommandText = sql;
                        conn.Open();
                        foreach (var param in cmd.CommandText.GetParameter())
                        {
                            SqlParameter sqlParameter = new SqlParameter();
                            sqlParameter.ParameterName = param;
                            sqlParameter.Value = Parameter.GetType().GetProperty(param.Replace("@", "")).GetValue(Parameter) ?? DBNull.Value;
                            cmd.Parameters.Add(sqlParameter);
                        }
                        var reader = cmd.ExecuteReader();
                        while (reader.Read())
                        {
                            if(typeof(object) == typeof(T))
                            {
                                //Convert object to dynamic
                                result.Add(reader.ConvertToDynamicObject<T>());
                            }
                            else
                            {
                                //Convert object to my type (T)
                                result.Add(reader.ConvertToClass<T>());
                            }
                            

                        }
                        reader.Close();
                        conn.Close();
                    }
                }
                return result;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
            
        }
    }
}
