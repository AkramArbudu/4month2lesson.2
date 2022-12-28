//
//  NetworkManager.swift
//  4month2lesson.2
//
//  Created by акрам on 26/12/22.
//

import Foundation

class NetworkManager {
    func getBeerList(completion: @escaping ([Beer]) -> ()) {
        let url = URL(string: "https://api.punkapi.com/v2/beers")
        
        URLSession.shared.dataTask(with: url!) {(data, response, error) in
                                   
                                   if error == nil && data != nil {
                                       do {
                                           let beers = try
                                           JSONDecoder().decode([Beer].self, from: data!)
                                           DispatchQueue.main.async {
                                               completion(beers)
                                           }
                                         
                                           print(beers)
                                       }catch{
                                           print("error")
                                       }
        }
        }.resume()
    }
}
