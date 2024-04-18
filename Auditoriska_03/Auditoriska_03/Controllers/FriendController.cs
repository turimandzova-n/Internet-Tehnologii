using Auditoriska_03.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Auditoriska_03.Controllers
{
    public class FriendController : Controller
    {
        public static List<FriendModel> friendModels = new List<FriendModel>()
        {
           new FriendModel(){Id=123, Ime="Nadica", MestoZiveenje="Kavadarci" },
           new FriendModel(){Id=456, Ime="Trajche", MestoZiveenje="Skopje"},
           new FriendModel(){Id=789, Ime="Goran", MestoZiveenje="Ohrid"}
        };
        // GET: Friend
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult ShowFriend()
        { 
            return View(friendModels);
        }
        public ActionResult Edit(int id)
        {
            var model = friendModels.ElementAt(id);
            model.Id = id;
            return View(model);
        }
        [HttpPost]
        public ActionResult EditMovie(FriendModel model)
        {
            if (!ModelState.IsValid)
            {
                return View("Edit", model);
            }
            var forUpdate = friendModels.ElementAt(model.Id);
            forUpdate.Ime = model.Ime;
            forUpdate.MestoZiveenje = model.MestoZiveenje;
            return View("ShowFriend", friendModels);
        }
        public ActionResult Delete(int id)
        {
           friendModels.RemoveAt(id);
           return View("ShowFriend", friendModels);
        }

    }
}