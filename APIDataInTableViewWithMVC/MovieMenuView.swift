//
//  MovieMenuView.swift
//  APIDataInTableViewWithMVC
//
//  Created by PGK Shiva Kumar on 12/08/21.
//

import Foundation
import UIKit
import SDWebImage

class MovieMenuView: UIView {
    
    @IBOutlet weak var movieListTVOutlet : UITableView!
    var movieList : MovieDataStructure?
    
    func setupUI(){
        movieListTVOutlet.dataSource = self
        movieListTVOutlet.delegate = self
        movieListTVOutlet.register(UINib(nibName: "MovieTableViewCell", bundle: nil), forCellReuseIdentifier: "MovieTableViewCell")
    }
    func updateUI(){
        DispatchQueue.main.async {
            self.movieListTVOutlet.reloadData()
        }
        
    }
}
extension MovieMenuView : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieList?.data?.data?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = movieListTVOutlet.dequeueReusableCell(withIdentifier: "MovieTableViewCell", for: indexPath) as? MovieTableViewCell{
//            cell.configureUI(image: movieList?.data?.data?[indexPath.row].imagery?.mobileMenuPosterImage ?? "", title: movieList?.data?.data?[indexPath.row].title ?? "")
//            cell.movieImageViewOutlet.sd_setImage(with: URL(string: "http://www.domain.com/path/to/image.jpg"), placeholderImage: UIImage(named: "placeholder.png"))
            
            cell.configureUI(image: movieList?.data?.data?[indexPath.row].imagery?.mobileMenuPosterImage ?? "", title: movieList?.data?.data?[indexPath.row].title ?? "")
            return cell
        }
        return UITableViewCell()
    }
}
extension MovieMenuView : UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}

//sd_setImage(with: URL(string: movieList?.data?.data?[indexPath.row].imagery?.mobileMenuPosterImage, placeholderImage: UIImage(named:""))
