//
//  MyWorkTableViewCell.swift
//  iOS_Github_App_Interface
//
//  Created by Ahmet Erkut on 21.10.2023.
//

import UIKit

class MyWorkTableViewCell: UITableViewCell {

    @IBOutlet weak var myWorkImageView: UIImageView!
    @IBOutlet weak var myWorkNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
