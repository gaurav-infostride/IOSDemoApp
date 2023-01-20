//
//  RestaurantViewModel.swift
//  IOSDemoApp
//
//  Created by Gaurav Kumar on 17/01/23.
//

import Foundation
import Kingfisher

class RestaurantViewModel{
    
    static let instance = RestaurantViewModel()
    var restaurantData: Restaurants = []
    
    func getrestaurantDetails(perPage:Int = 10,completion:@escaping() -> ()?){
        let urlString = "https://random-data-api.com/api/restaurant/random_restaurant?size=\(perPage)"
        let url = URL(string: urlString)
        guard let url = url else {return}
        
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard error == nil else {
                print(error?.localizedDescription ?? "")
                return
            }
            
            if  let data = data{
                do{
                    //Here we will decode with a type that is an array<Restaurant>
                    let restaurant = try JSONDecoder().decode(Restaurants.self, from: data)
                    self.restaurantData = restaurant
                    var imagesLoaded = 0
                    for i in 0..<self.restaurantData.count {
                        
                        if let url = URL(string: self.restaurantData[i].logo ?? "") {
                            let task = URLSession.shared.dataTask(with: url) { data, response, error in
                                guard let data = data, error == nil else { return }
                                imagesLoaded += 1
                                self.restaurantData[i].image = UIImage(data: data) ?? UIImage()
                                
                                if imagesLoaded == self.restaurantData.count {
                                    completion()
                                }
                             
                            }
                            
                            task.resume()
                        }
                        
//                        if let url = URL(string: self.restaurantData[i].logo ?? "") {
//
//                            self.dowloadImage(from: url) { image in
//                                self.restaurantData[i].image = image
//                                imagesLoaded += 1
//                                if imagesLoaded == self.restaurantData.count {
//                                    DispatchQueue.main.async {
//                                        completion()
//                                    }
//
//                                }
//                            }
//                        }
                    }
                    
                    
                }catch let e{
                    print(e)
                }
                
            }else{
                print("Response",response ?? "")
            }
        }.resume()
        
    }
    
}
