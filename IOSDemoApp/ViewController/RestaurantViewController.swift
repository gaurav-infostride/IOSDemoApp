//
//  RestaurantViewController.swift
//  IOSDemoApp
//
//  Created by Gaurav Kumar on 17/01/23.
//

import UIKit
import Kingfisher

class RestaurantViewController: UIViewController {
    ///Variable
    let viewModel = RestaurantViewModel.instance
    
    ///IB Outlets
    @IBOutlet weak var restaurantTableView: UITableView!
    
    ///ViewDidLoad Method of View Controller Life Cycle
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
    ///Method of View Controller Life Cycle
    ///ViewWillAppear
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }

}

///Extension RestaurantViewController to write seprate code for  TableView delegates and datasource
extension RestaurantViewController : UITableViewDataSource, UITableViewDelegate{
    
    ///Datasource function of tableview  'numberOfRowsInSection'  returns noumber of rows
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.restaurantData.count
    }
    
    ///Datasource function of tableview  'cellForRowAt' , create your custome  cell and it return cell for each row
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        
        let cell = restaurantTableView.dequeueReusableCell(withIdentifier: Helper.Cell.restaurantTableViewCell, for: indexPath) as! RestaurantTableViewCell
        
        let image = viewModel.restaurantData[indexPath.row].image
        print("Image size ->", image.size)
        cell.imageView?.image = viewModel.restaurantData[indexPath.row].image
       // cell.imageView?.contentMode = .scaleAspectFit
        
        
        cell.nameLbl.text = viewModel.restaurantData[indexPath.row].name
        cell.typeLbl.text = viewModel.restaurantData[indexPath.row].type
        cell.contactLbl.text = viewModel.restaurantData[indexPath.row].phoneNumber
        
        return cell
    }
    
    
}

