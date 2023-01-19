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
                        
                        restaurantData.forEach { restaurant in
//                            restaurant.image.kf.setImage(with: restaurant.logo, options: [.forceRefresh])
                            restaurant.image.kf.setImage(with: restaurant.logo, options: [.forceRefresh])
                        }
                        completion()

                    
                }catch let e{
                    print(e)
                }
                
            }else{
                print("Response",response ?? "")
            }
        }.resume()
        
    }
    
    
    
    
}
