//
//  MovieSMasterVC.swift
//  Classwork6
//
//  Created by tahani alrashidi on 7/1/20.
//  Copyright © 2020 Hasan Alsaffar. All rights reserved.
//

import UIKit

var selectedMovie: Movie = Movie(movieName: "", movieReleaseDate: 0000, actors: [""], rating: 0.0, pgRating: "PG")

class MovieSMasterVC: UIViewController {
    
    var marvelImages = MarvelMovieData
    var dcImages = DCMovieData
    
    @IBOutlet weak var marvelBtn0: UIButton!
    @IBOutlet weak var marvelBtn1: UIButton!
    @IBOutlet weak var marvelBtn2: UIButton!
    @IBOutlet weak var marvelBtn3: UIButton!
    @IBOutlet weak var marvelBtn4: UIButton!
    @IBOutlet weak var marvelBtn5: UIButton!
    
    @IBOutlet weak var dcBtn0: UIButton!
    @IBOutlet weak var dcBtn1: UIButton!
    @IBOutlet weak var dcBtn2: UIButton!
    @IBOutlet weak var dcBtn3: UIButton!
    @IBOutlet weak var dcBtn4: UIButton!
    @IBOutlet weak var dcBtn5: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setMarvelImages()
        setDCImages()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let moviecController = segue.destination as? MovieDetailsVC else{
            fatalError()
        }
        moviecController.movieData = selectedMovie
    }
    
    @IBAction func marvelBtns(_ sender: UIButton) {
        print ("Marvel", sender.tag)
        selectedMovie = MarvelMovieData[sender.tag]
        performSegue(withIdentifier: "detail", sender: nil)
    }
    @IBAction func  dcBtns(_ sender: UIButton) {
        print ("DC", sender.tag)
        selectedMovie = DCMovieData[sender.tag]
        performSegue(withIdentifier: "detail", sender: nil)
    }

    func setMarvelImages(){
        marvelBtn0.setBackgroundImage(UIImage(named: marvelImages[0].movieName), for: .normal)
        marvelBtn1.setBackgroundImage(UIImage(named: marvelImages[1].movieName), for: .normal)
        marvelBtn2.setBackgroundImage(UIImage(named: marvelImages[2].movieName), for: .normal)
        marvelBtn3.setBackgroundImage(UIImage(named: marvelImages[3].movieName), for: .normal)
        marvelBtn4.setBackgroundImage(UIImage(named: marvelImages[4].movieName), for: .normal)
        marvelBtn5.setBackgroundImage(UIImage(named: marvelImages[5].movieName), for: .normal)
    }
    func setDCImages(){
           dcBtn0.setBackgroundImage(UIImage(named: dcImages[0].movieName), for: .normal)
           dcBtn1.setBackgroundImage(UIImage(named: dcImages[1].movieName), for: .normal)
           dcBtn2.setBackgroundImage(UIImage(named: dcImages[2].movieName), for: .normal)
           dcBtn3.setBackgroundImage(UIImage(named: dcImages[3].movieName), for: .normal)
           dcBtn4.setBackgroundImage(UIImage(named: dcImages[4].movieName), for: .normal)
           dcBtn5.setBackgroundImage(UIImage(named: dcImages[5].movieName), for: .normal)
       }
    
    
}
