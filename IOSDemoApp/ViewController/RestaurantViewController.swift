//
//  RestaurantViewController.swift
//  IOSDemoApp
//
//  Created by Gaurav Kumar on 17/01/23.
//

import UIKit
import Kingfisher

class RestaurantViewController: UIViewController {
    
    @IBOutlet weak var restaurantTableView: UITableView!
    
    let viewModel = RestaurantViewModel.instance
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        restaurantTableView.dataSource = self
        restaurantTableView.delegate = self
        viewModel.getrestaurantDetails(){
            print(self.viewModel.restaurantData)
            
            DispatchQueue.main.async {
                self.restaurantTableView.reloadData()
            }
            
        }
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        
    }
}

extension RestaurantViewController : UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.restaurantData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = restaurantTableView.dequeueReusableCell(withIdentifier: k.Cell.restaurantTableViewCell, for: indexPath) as! RestaurantTableViewCell
        
        let image = viewModel.restaurantData[indexPath.row].image
        print("Image size ->", image.size)
        cell.imageView?.image = viewModel.restaurantData[indexPath.row].image
        cell.imageView?.contentMode = .scaleAspectFit
        
        
        cell.nameLbl.text = viewModel.restaurantData[indexPath.row].name
        cell.typeLbl.text = viewModel.restaurantData[indexPath.row].type
        cell.contactLbl.text = viewModel.restaurantData[indexPath.row].phoneNumber
        
        return cell
    }
    
    
}

