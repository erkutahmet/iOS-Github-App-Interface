//
//  DiscoverTableViewCell.swift
//  iOS_Github_App_Interface
//
//  Created by Ahmet Erkut on 22.10.2023.
//

import UIKit

class DiscoverTableViewCell: UITableViewCell {

    @IBOutlet weak var discoverImageView: UIImageView!
    @IBOutlet weak var discoverLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
