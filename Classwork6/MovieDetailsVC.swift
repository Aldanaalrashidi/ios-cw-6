//
//  MovieDetailsVC.swift
//  Classwork6
//
//  Created by tahani alrashidi on 7/1/20.
//  Copyright © 2020 Hasan Alsaffar. All rights reserved.
//

import UIKit

class MovieDetailsVC: UIViewController {
    //movie image and name
   
    @IBOutlet weak var movieName: UINavigationItem!
    @IBOutlet weak var movieImg: UIImageView!
   
    //label & view of rating, rated, and release date
    @IBOutlet weak var movieRating: UILabel!
    @IBOutlet weak var ratingBG: UIView!
    @IBOutlet weak var movieRated: UILabel!
    @IBOutlet weak var ratedBG: UIView!
    @IBOutlet weak var movieReleaseDate: UILabel!
    @IBOutlet weak var yearBG: UIView!
    
    //3 actor images and names
    @IBOutlet weak var actorImg1: UIImageView!
    @IBOutlet weak var actorName1: UILabel!
    @IBOutlet weak var actorImg2: UIImageView!
    @IBOutlet weak var actorName2: UILabel!
    @IBOutlet weak var actorImg3: UIImageView!
    @IBOutlet weak var actorName3: UILabel!

    var movieData: Movie = selectedMovie
    override func viewDidLoad() {
        super.viewDidLoad()
        setMovieDetails()
        corners()
        movieName.title = selectedMovie.movieName
    }
    
    func setMovieDetails(){
        movieName.title = selectedMovie.movieName
        self.movieImg.image = UIImage(named: selectedMovie.movieName)
        self.movieRating.text = String(selectedMovie.rating)
        self.movieRated.text = selectedMovie.pgRating
        self.movieReleaseDate.text = String(selectedMovie.movieReleaseDate)
        self.actorImg1.image = UIImage(named:selectedMovie.actors[0])
        self.actorName1.text = selectedMovie.actors[0]
        self.actorImg2.image = UIImage(named: selectedMovie.actors[1])
        self.actorName2.text = selectedMovie.actors[1]
        self.actorImg3.image = UIImage(named: selectedMovie.actors[2])
        self.actorName3.text = selectedMovie.actors[2]
    }
    func corners(){
        ratedBG.layer.cornerRadius = 20
        ratingBG.layer.cornerRadius = 20
        yearBG.layer.cornerRadius = 20
    }

}
