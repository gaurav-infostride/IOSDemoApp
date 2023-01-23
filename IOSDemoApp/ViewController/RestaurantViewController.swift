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
//            print(self.viewModel.restaurantData)
            self.restaurantTableView.reloadData()
            
        }
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}

extension RestaurantViewController : UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.restaurantData.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = restaurantTableView.dequeueReusableCell(withIdentifier: Helper.Cell.restaurantTableViewCell, for: indexPath) as! RestaurantTableViewCell
   
        let url = URL(string: viewModel.restaurantData[indexPath.row].logo!)
            cell.logoImageView.kf.setImage(with: url)
        cell.nameLbl.text = viewModel.restaurantData[indexPath.row].name
        cell.typeLbl.text = viewModel.restaurantData[indexPath.row].type
        cell.contactLbl.text = viewModel.restaurantData[indexPath.row].phoneNumber
        
        
        return cell
    }
    
    
}

