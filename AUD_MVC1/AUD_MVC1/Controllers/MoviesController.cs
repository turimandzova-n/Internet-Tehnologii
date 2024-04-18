﻿using AUD_MVC1.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace AUD_MVC1.Controllers
{
    public class MoviesController : Controller
    {
        public static List<Movie> movielist = new List<Movie>()
        {
            new Movie() {Name = "Shek!", Rating = 5, DownloadURL = "#", ImageURL = @"data:image/jpeg;base64,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" }
        };        
    
        public static List<Client> clients = new List<Client>()
        {
            
        };
        // GET: Movies
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Random()
        {
            MovieRentals model = new MovieRentals();
            model.clients = clients;
            model.movie = movielist.ElementAt(0);
            return View(model);
        }
        public ActionResult ShowClient (int id)
        {
            return View(clients.ElementAt(id));
        }

        public ActionResult NewMovie() {

            Movie model = new Movie();
            return View(model);
        }
        [HttpPost]
        public ActionResult InsertNewMovie(Movie model)
        {
            if(!ModelState.IsValid)
            {
                return View("NewMovie", model);
            }
            movielist.Add(model);
            return View("GetAllMovies", movielist);
        }
        public ActionResult GetAllMovies() {
            return View(movielist);
        }
        public ActionResult EditMovie(int id)
        {
            var model = movielist.ElementAt(id);
            model.Id = id;
            return View(model);
        }
        [HttpPost]
        public ActionResult EditMovie(Movie model)
        {
            if (!ModelState.IsValid)
            {
                return View("EditMovie", model);
            }
            var forUpdate = movielist.ElementAt(model.Id);
            forUpdate.ImageURL = model.ImageURL;
            forUpdate.Name = model.Name;
            forUpdate.DownloadURL = model.DownloadURL;
            forUpdate.Rating = model.Rating;
            return View("GetAllMovies", movielist);
        }
        public ActionResult DeleteMovie(int id)
        {
            movielist.RemoveAt(id);
            return View("GetAllMovies", movielist);
        }
        public ActionResult NewClient()
        {
            Client model = new Client();
            return View(model);
        }
        [HttpPost]
        public ActionResult InsertNewClient(Client model)
        {
            if (!ModelState.IsValid)
            {
                return View("NewClient", model);
            }
            clients.Add(model);
            return View("GetAllMovies", movielist);
        }


    }
}