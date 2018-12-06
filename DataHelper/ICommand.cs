using System;

namespace Infrastructure
{
    public interface ICommand : IDisposable
    {
        Result Execute();
    }

    public interface ICommand<T> : IDisposable
    {
        Result<T> Execute();
    }

    public abstract class CommandBase : ICommand
    {
        //protected IUnitOfWork UnitOfWork { get; private set; }
        //protected IAqDatabase DefaultDb { get; private set; }

        //public CommandBase()
        //{
        //    UnitOfWork = ServiceLocator.Current.GetInstance<IUnitOfWork>();
        //    DefaultDb = UnitOfWork.GetDatabase();
        //}

        /// <summary>
        /// Validate before execute a command. Base validation does nothing
        /// </summary>
        protected virtual void ValidateCore()
        {
        }
        protected virtual void OnExecutingCore()
        {
        }
        protected virtual void OnExecutedCore(Result result)
        {
        }
        protected abstract Result ExecuteCore();
        public Result Execute()
        {
            try
            {
                ValidateCore();
                OnExecutingCore();
                var result = ExecuteCore();
                OnExecutedCore(result);
                return result;
            }
            catch (Exception ex)
            {
                return new Result
                {
                    IsSuccess = false,
                    Message = ex.Message
                };
            }
            finally
            {
                
            }
        }

        public virtual void Dispose()
        {
        }

        protected Result Success(string message = null)
        {
            return new Result
            {
                IsSuccess = true,
                Message = message ?? "success"
            };
        }
    }

    public abstract class CommandBase<T> : ICommand<T>
    {

        /// <summary>
        /// Validate before execute a command. Base validation does nothing
        /// </summary>
        protected virtual void ValidateCore()
        {
        }
        protected virtual void OnExecutingCore()
        {
        }
        protected virtual void OnExecutedCore(Result<T> result)
        {
        }
        protected abstract Result<T> ExecuteCore();
        public Result<T> Execute()
        {
            try
            {
                ValidateCore();
                OnExecutingCore();
                var result = ExecuteCore();
                OnExecutedCore(result);
                
                return result;
            }
            catch (Exception ex)
            {
                return new Result<T>
                {
                    IsSuccess = false,
                    Message = ex.Message
                };
            }
        }
        public virtual void Dispose()
        {
        }

        protected Result<T> Success(T data, string message = null)
        {
            return new Result<T>
            {
                Data = data,
                IsSuccess = true,
                Message = message ?? "success"
            };
        }
    }

    public interface IResult
    {
        bool IsSuccess { get; set; }
        string Message { get; set; }
        object Description { get; set; }
    }

    public interface IResult<T> : IResult
    {
        T Data { get; set; }
    }

    public class Result : IResult
    {
        public bool IsSuccess { get; set; }
        public string Message { get; set; }
        public object Description { get; set; }
    }

    public class Result<T> : Result, IResult<T>
    {
        public T Data { get; set; }
    }

    public class CommandResult
    {
        public static Result Susscess(string msg = null)
        {
            return new Result
            {
                IsSuccess = true,
                Message = msg
            };
        }
        public static Result<T> Susscess<T>(T data, string msg = null)
        {
            return new Result<T>
            {
                IsSuccess = true,
                Message = msg,
                Data = data
            };
        }
    }
}
