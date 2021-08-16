//
//  MovieDataStructure.swift
//  APIDataInTableViewWithMVC
//
//  Created by PGK Shiva Kumar on 12/08/21.
//

import Foundation

struct MovieDataStructure : Codable {
    var statusCode : Int?
    var data : ConfigureData?
}
struct ConfigureData : Codable {
    var total : Int?
    var data : [MovieDetails]?
}
struct MovieDetails : Codable {
    var id : Int?
    var friendly_url : String?
    var seo_description : String?
    var title : String?
    var type : String?
    var imagery : Imagery?
}
struct Imagery : Codable {
    var mobileMenu : String?
    var menuPosterImage : String?
    var mobileMenuPosterImage : String?
    
    enum CodingKeys: String, CodingKey {
        case mobileMenu = "mobile-menu"
        case menuPosterImage = "menu-poster-image"
        case mobileMenuPosterImage = "mobile-menu-poster-image"
    }
}
/*
 struct MovieDataStructure : Codable {
     var statusCode : Int?
     var data : Data?
 }
 struct Data : Codable {
     var id : Int?
     var friendly_url : String?
     var seo_description : String?
     var title : String?
     var type : String?
     var imagery : ImageData?
 }
 struct ImageData : Codable {
     var mobileMenu : String?
     enum CodingKeys: String, CodingKey {
             case mobileMenu = "mobile-menu"
             case menuPosterImage = "menu-poster-image"
             case mobileMenuPosterImage = "mobile-menu-poster-image"
         }
 }
 */

/*
 
 // MARK: - MovieMenu
 struct MovieDataStructure: Codable {
     let statusCode: Int?
     let data: MovieList?
 }
 // MARK: - DataClass
 struct MovieList: Codable {
     let total: Int?
     let configData: [ConfigData]?
 }
 // MARK: - ConfigData
 struct ConfigData: Codable {
     let id: Int?
     let friendlyURL, seoDescription, title, type: String?
     let imagery: Imagery?
     enum CodingKeys: String, CodingKey {
         case id
         case friendlyURL = "friendly_url"
         case seoDescription = "seo_description"
         case title, type, imagery
     }
 }
 // MARK: - Imagery
 struct Imagery: Codable {
     let mobileMenu, menuPosterImage, mobileMenuPosterImage: String?
     enum CodingKeys: String, CodingKey {
         case mobileMenu = "mobile-menu"
         case menuPosterImage = "menu-poster-image"
         case mobileMenuPosterImage = "mobile-menu-poster-image"
     }
 }
 */
