//
//  MovieMenuViewController.swift
//  APIDataInTableViewWithMVC
//
//  Created by PGK Shiva Kumar on 12/08/21.
//
//https://n6lih99291.execute-api.ap-south-1.amazonaws.com/dev/menu

import UIKit
class MovieMenuViewController: UIViewController {
    
    @IBOutlet weak var movieMenuViewOutlet : MovieMenuView!
    var movieMenuModel : MovieMenuModel = MovieMenuModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    func setupUI(){
        movieMenuModel.delegate = self
        movieMenuViewOutlet.setupUI()
        movieMenuModel.getData()
        
//        movieMenuViewOutlet.setupUI()
//        movieMenuModel.getDataWithCompletionHadler { (movies) in
//            self.movieMenuViewOutlet.movieList = movies
//            self.movieMenuViewOutlet.updateUI()
//        }
    }
}
extension MovieMenuViewController : MovieMenuModelDelegate{
    func updateData() {
        let data = movieMenuModel.movieListData
        movieMenuViewOutlet.movieList = data
        movieMenuViewOutlet.updateUI()
    }
}
