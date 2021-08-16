//
//  MovieTableViewCell.swift
//  APIDataInTableViewWithMVC
//
//  Created by PGK Shiva Kumar on 12/08/21.
//

import UIKit
import SDWebImage

class MovieTableViewCell: UITableViewCell {
    
    @IBOutlet weak var movieImageViewOutlet : UIImageView!
    @IBOutlet weak var movieNameLabelOutlet : UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        setupUI()
    }
    func setupUI(){
        movieNameLabelOutlet.textColor = UIColor.lightGray
        movieNameLabelOutlet.font = UIFont.systemFont(ofSize: 24, weight: .semibold)
        movieImageViewOutlet.layer.cornerRadius = movieImageViewOutlet.frame.size.height / 2
    }
    func configureUI(image : String , title : String){
        movieNameLabelOutlet.text = title
        let url = URL(string: image)
        movieImageViewOutlet.sd_setImage(with: url, completed: nil)
    }
}
