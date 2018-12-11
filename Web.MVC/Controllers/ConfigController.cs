using System;
using Infrastructure;
using Microsoft.AspNetCore.Mvc;
using Web.MVC.Models;

namespace Web.MVC.Controllers
{
    public class ConfigController : Controller
    {
        public Result<dynamic> Menu(CategorySearchAction ActionCmd)
        {
            var result = ActionCmd.Execute();
            return result;
        }
        public Result<dynamic> SideBar(ConfigSideBarAction ActionCmd)
        {
            return ActionCmd.Execute();
        }
        public Result<dynamic> StoryInfo(ConfigStoryInfoAction ActionCmd)
        {
            return ActionCmd.Execute();
        }
        public Result<dynamic> GetContentStory(ConfigContentStoryAction ActionCmd)
        {
            return ActionCmd.Execute();
        }
        public Result<dynamic> Home(ConfigHomeAction ActionCmd)
        {
            return ActionCmd.Execute();
        }
        
        public Result<dynamic> AllStory(ConfigAllStoryAction ActionCmd)
        {
            return ActionCmd.Execute();
        }


    }
}
