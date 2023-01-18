//
//  RestaurantTableViewCell.swift
//  IOSDemoApp
//
//  Created by Gaurav Kumar on 17/01/23.
//

import UIKit

class RestaurantTableViewCell: UITableViewCell {

    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var typeLbl: UILabel!
    @IBOutlet weak var contactLbl: UILabel!
    @IBOutlet weak var statusLbl: UILabel!
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
