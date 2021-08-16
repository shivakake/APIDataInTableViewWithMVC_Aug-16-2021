//
//  MovieMenuModel.swift
//  APIDataInTableViewWithMVC
//
//  Created by PGK Shiva Kumar on 12/08/21.
//

//https://n6lih99291.execute-api.ap-south-1.amazonaws.com/dev/menu
import Foundation
protocol MovieMenuModelDelegate : AnyObject {
    func updateData()
}
class MovieMenuModel{
    var movieListData : MovieDataStructure?
    var delegate : MovieMenuModelDelegate?

    func getData(){
        guard let url = URL(string: "https://n6lih99291.execute-api.ap-south-1.amazonaws.com/dev/menu") else { return }
        let request = URLRequest(url: url)
        URLSession.shared.dataTask(with: request) { (data, response, error) in
            if let error = error{
                print("Error is : ",error.localizedDescription)
            }else{
                if let data = data{
                    print("Data is : " ,data)
                    do {
                        let jsonData = try JSONDecoder().decode(MovieDataStructure.self, from: data)
                        self.movieListData = jsonData
                        print(self.movieListData?.data?.data?.count)
                        self.delegate?.updateData()
                    } catch  {
                        print("Error is : ", error.localizedDescription)
                    }
                }
            }
        }.resume()
    }
    
    func getDataWithCompletionHadler(completion: @escaping ((MovieDataStructure?) -> Void)) {
        guard let url = URL(string: "https://n6lih99291.execute-api.ap-south-1.amazonaws.com/dev/menu") else {
            return
        }
        let request = URLRequest(url: url)
        URLSession.shared.dataTask(with: request) { data, response, error in
            if error != nil {
                print(error?.localizedDescription ?? "")
//                completion(nil)
                completion(nil)
                return
            }
            if let data = data {
                do {
                    let jsonData = try JSONDecoder().decode(MovieDataStructure.self, from: data)
                    self.movieListData = jsonData
                    print(self.movieListData?.data?.data?.count)
                    completion(self.movieListData)
                }catch {
                    completion(nil)
                }
            }
        }.resume()
    }
}
