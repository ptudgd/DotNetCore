using HtmlAgilityPack;
using Infrastructure;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using xNet;

namespace DataTruyenFull
{
    public class DataRun : CommandBase
    {
        private string GetHTML(string Url)
        {
            try
            {
                
                HttpRequest httpRequest = new HttpRequest();
                httpRequest.Cookies = new CookieDictionary();
                httpRequest.UserAgent = Http.ChromeUserAgent();
                RequestParams para = new RequestParams();

                string html = httpRequest.Get(Url, para).ToString();
                return html;
            }
            catch (HttpRequestException ex)
            {
                this.ConsoleWrite(ex.Message, ConsoleColor.Blue);
                this.ConsoleWrite("Try again: " + Url, ConsoleColor.DarkRed);
                return GetHTML(Url);
            }
            
        }
        private dynamic GetInfo(string Url)
        {
            try
            {
                HtmlDocument htmlDocument = new HtmlDocument();
                htmlDocument.LoadHtml(this.GetHTML(Url));
                var Title = htmlDocument.DocumentNode.SelectNodes("//div[@class='w3-col m8 l8 w3-container w3-center detail-right']/h1/a").FirstOrDefault().InnerText;
                var Image = htmlDocument.DocumentNode.SelectNodes("//div[@class='w3-col s4 m12 l12 detail-thumbnail']/img").FirstOrDefault().Attributes["src"].Value;
                var Author = htmlDocument.DocumentNode.SelectNodes("//div[@class='w3-col s8 m12 l12 detail-info']/ul/li/h2/a").FirstOrDefault().InnerText;
                var Decription = htmlDocument.DocumentNode.SelectNodes("//div[@class='w3-justify summary']").FirstOrDefault().FirstChild.InnerHtml;
                var Tag = htmlDocument.DocumentNode.SelectNodes("//div[@class='w3-col s8 m12 l12 detail-info']/ul/li")[1].ChildNodes;
                var Status = htmlDocument.DocumentNode.SelectNodes("//div[@class='w3-col s8 m12 l12 detail-info']/ul/li")[3].LastChild.InnerText;
                var View = htmlDocument.DocumentNode.SelectNodes("//div[@class='w3-col s8 m12 l12 detail-info']/ul/li")[4].ChildNodes["b"].InnerText;
                var TagName = new List<dynamic>();
                foreach (var item in Tag)
                {
                    if (item.Name == "a")
                    {
                        TagName.Add(item.InnerText);
                    }
                }
                return new
                {
                    Title = Title,
                    Image = Image,
                    Author = Author,
                    Decription = Decription,
                    Tag = TagName,
                    Status = Status,
                    View = View,
                    Link = Url
                };
            }
            catch (Exception ex)
            {
                this.ConsoleWrite(ex.Message, ConsoleColor.Red);
                return this.GetInfo(Url);
            }
            
        }
        private List<dynamic> getLinkTruyen(string url)
        {
            try
            {
                HtmlDocument htmlDocument = new HtmlDocument();
                htmlDocument.LoadHtml(this.GetHTML(url));
                var data = htmlDocument.DocumentNode.SelectNodes("//div[@class='w3-col s2 m2 l2 row-image']/div/a");
                if (data == null)
                    return new List<dynamic>();
                var lst = new List<dynamic>();
                foreach (var item in data)
                {
                    var info = this.GetInfo(item.Attributes["href"].Value);
                    if (this.GetStory(new Story
                    {
                        Name = info.Title
                    }))
                    {
                        lst.Add(info);
                    }
                }
                return lst.Count > 0 ? lst : null;
            }
            catch (Exception ex)
            {
                this.ConsoleWrite("GetLinkTruyen: "+ex.Message, ConsoleColor.Red);
                return this.getLinkTruyen(url);
            }
            
        }
        private long GetLastPage(string url)
        {
            try
            {
                HtmlDocument htmlDocument = new HtmlDocument();
                htmlDocument.LoadHtml(this.GetHTML(url));
                var data = htmlDocument.DocumentNode.SelectNodes("//a[@class='last']");
                if (data == null)
                    return -1;
                return long.Parse(data.FirstOrDefault().Attributes["title"].Value.Split('-').LastOrDefault());
            }
            catch (Exception ex)
            {
                this.ConsoleWrite("GetLastPage: " + ex.Message, ConsoleColor.Red);
                return this.GetLastPage(url);
            }
            
        }
        private string GetData(Story Story,string url, long? ChapterId)
        {
            try
            {
                HtmlDocument htmlDocument = new HtmlDocument();
                htmlDocument.LoadHtml(this.GetHTML(url));
                var data = htmlDocument.DocumentNode.SelectNodes("//div[@id='content']");
                if (data != null)
                {
                    this.ConsoleWrite(" [Success]", ConsoleColor.Blue, false);
                    using (var cmd = new InsertContent())
                    {
                        cmd.content = new ContentData
                        {
                            ChapterId = ChapterId,
                            StoryId = Story.StoryId,
                            Text = data.FirstOrDefault().InnerHtml
                        };
                        cmd.Execute();
                    }
                    return data.FirstOrDefault().InnerHtml;
                }
                this.ConsoleWrite(" [Failed]", ConsoleColor.Red);
                return "";
            }
            catch (Exception ex)
            {
                this.ConsoleWrite("GetData: " + ex.Message, ConsoleColor.Red);
                return this.GetData(Story, url, ChapterId);
            }
            
        }
        private List<dynamic> GetLinkChap(Story Story,string Url)
        {
            try
            {
                HtmlDocument htmlDocument = new HtmlDocument();
                htmlDocument.LoadHtml(this.GetHTML(Url));
                var data = htmlDocument.DocumentNode.SelectNodes("//div[@class='list-chapter']/ul/li/h4/a");
                if (data == null) return new List<dynamic>();
                var lst = new List<dynamic>();
                foreach (var item in data)
                {
                    Console.Write("\t\t[{0}] {1}: {2}", DateTime.Now.ToString("dd/MM/yyyy HH:mm:ss"), Story.Name, item.Attributes["title"].Value);
                    using (var cmd = new InsertChapter())
                    {
                        cmd.Chapter = new Chapter
                        {
                            StoryId = Story.StoryId,
                            EditDate = DateTime.Now,
                            WriteDate = DateTime.Now,
                            Name = item.Attributes["title"].Value
                        };
                        cmd.Execute();
                        lst.Add(new
                        {
                            Title = item.Attributes["title"].Value,
                            Link = item.Attributes["href"].Value,
                            Data = this.GetData(Story, item.Attributes["href"].Value, cmd.Chapter.ChapterId)
                        });
                    }
                }
                return lst;
            }
            catch (Exception ex)
            {
                this.ConsoleWrite("GetLinkChap: " + ex.Message, ConsoleColor.Red);
                return this.GetLinkChap(Story, Url);
            }
            
        }
        private void ConsoleWrite(string text = "", ConsoleColor color = ConsoleColor.White,bool inLine = false)
        {
            Console.ForegroundColor = color;
            if(color == ConsoleColor.Red)
            {
                using(var w = new StreamWriter("error.log", true))
                {
                    w.WriteLine(text);
                }
            }
            if (inLine)
            {
                Console.Write(text);
            }
            else
            {
                Console.WriteLine(text);
            }
            Console.ResetColor();
        }
        public string url { get; set; }
        private void InsertStatus(string Name)
        {
            using(var cmd = new InsertStatus())
            {
                cmd.Status = new Status
                {
                    Name = Name
                };
                cmd.Execute();
            }
        }
        private Status GetStatus(string Name)
        {
            using(var cmd = new StatusGetByName<Status>())
            {
                cmd.Name = Name;
                var result =  cmd.Execute();
                if(result.Data == null)
                {
                    this.InsertStatus(Name);
                }
                return cmd.Execute().Data;
            }
        }
        private void InsertCategory(string Name)
        {
            using(var cmd = new InsertCategory())
            {
                cmd.Category = new Category
                {
                    Name = Name
                };
                cmd.Execute();
            }
        }
        private Category GetCategory(string Name)
        {
            using(var cmd = new CategoryGetByName<Category>())
            {
                cmd.Name = Name;
                var result = cmd.Execute();
                if(result.Data == null)
                {
                    this.InsertCategory(Name);
                }
                return cmd.Execute().Data;
            }
        }
        private bool GetStory(Story story)
        {
            using(var cmd = new StoryGetByName<Story>())
            {
                cmd.Story = story;
                return cmd.Execute().Data == null;
            }
        }
        private void GetStory(Category type)
        {
            var curPage = 0;
            var lastPage = this.GetLastPage(type.Url);
            if (lastPage == -1)
            {
                Console.WriteLine("Không thể lấy trang cuối! " + type.Url);
                return;
            }
            while (curPage != lastPage)
            {
                ++curPage;
                Console.Write(string.Format("[{0}] " + type.Url + "/{1}", DateTime.Now.ToString("dd/MM/yyyy HH:mm:ss"), curPage));
                var data = this.getLinkTruyen(string.Format(type.Url + "/{0}", curPage));
                if(data == null)
                {
                    this.ConsoleWrite(string.Format(" [Avaiable]"), ConsoleColor.Green);
                }
                else
                {
                    this.ConsoleWrite(string.Format(" [{0}]", data.Count > 0 ? "Success" : "Failed"), ConsoleColor.Yellow);
                }
                if(data != null && data.Count > 0)
                {
                    data.ForEach((x) =>
                    {
                        this.ConsoleWrite(string.Format("\t[{0}] {1}", DateTime.Now.ToString("dd/MM/yyyy HH:mm:ss"), x.Title), ConsoleColor.Green);
                        using (var cmd = new InsertStory())
                        {
                            Status status = this.GetStatus(x.Status);
                            cmd.Story = new Story
                            {
                                Name = x.Title,
                                WriteDate = DateTime.Now,
                                EditDate = DateTime.Now,
                                Image = x.Image,
                                isPublic = true,
                                Decription = x.Decription,
                                View = long.Parse(x.View),
                                StatusId = status.StatusId
                            };
                            cmd.Execute();
                            this.GetLinkChap(cmd.Story, x.Link);
                            foreach (var item in x.Tag)
                            {
                                Category Cate = this.GetCategory(item);
                                using (var cd = new InsertTag())
                                {
                                    cd.Tag = new Tag
                                    {
                                        StoryId = cmd.Story.StoryId,
                                        CategoryId = Cate.CategoryId
                                    };
                                    cd.Execute();
                                }
                            }
                        }

                    });
                }
                
            }
        }
        private List<dynamic> GetTypeStory()
        {
            try
            {
                var lst = new List<dynamic>();
                HtmlDocument htmlDocument = new HtmlDocument();
                htmlDocument.LoadHtml(this.GetHTML(this.url));
                var data = htmlDocument.DocumentNode.SelectNodes("//a[@class='w3-col s6 m6 l6']");
                this.ConsoleWrite("Danh sách thể loại:", ConsoleColor.Gray);

                foreach (var type in data)
                {
                    this.ConsoleWrite(type.Attributes["title"].Value, ConsoleColor.DarkBlue);
                    lst.Add(new
                    {
                        Url = type.Attributes["href"].Value,
                        Title = type.Attributes["title"].Value
                    });
                }
                return lst;
            }
            catch (Exception ex)
            {
                this.ConsoleWrite("GetTypeStory: " + ex.Message, ConsoleColor.Red);
                return this.GetTypeStory();
            }
            
        }
        protected override Result ExecuteCore()
        {
            this.GetTypeStory().ForEach((item) =>
            {
                this.GetStory(new Category
                {
                    Name = item.Title,
                    Url = item.Url
                });

            });
            
            return Success();
        }
    }
}
