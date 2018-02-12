//
//  SuperDetailViewController.swift
//  FlixApp
//
//  Created by Tyler Mack  on 2/9/18.
//  Copyright © 2018 William D. All rights reserved.
//

import UIKit

enum SuperMovieKeys {
    static let title = "title"
    static let releaseDate = "release_date"
    static let overviewStatic = "overview"
    static let backdropPath = "backdrop_path"
    static let posterPath = "poster_path"
}
class SuperDetailViewController: UIViewController {

    @IBOutlet weak var backDropImageView: UIImageView!
    @IBOutlet weak var posterImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var releaseDateLabel: UILabel!
    @IBOutlet weak var overviewLabel: UILabel!
    
    var movie: [String: Any]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let movie = movie {
            titleLabel.text = movie[SuperMovieKeys.title] as? String
            releaseDateLabel.text = movie[SuperMovieKeys.releaseDate] as? String
            overviewLabel.text = movie[SuperMovieKeys.overviewStatic] as? String
            let backdropPathString = movie[SuperMovieKeys.backdropPath] as! String
            let posterPathString = movie[SuperMovieKeys.posterPath] as! String
            let baseURLString = "https://image.tmdb.org/t/p/w500"
            
            
            let backDropURL = URL(string: baseURLString + backdropPathString)!
            backDropImageView.af_setImage(withURL: backDropURL)
            
            let posterPathURL = URL(string: baseURLString + posterPathString)!
            posterImageView.af_setImage(withURL: posterPathURL)
            
            
        }

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
