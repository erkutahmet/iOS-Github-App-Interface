//
//  ProfileRepoSectionsTableViewCell.swift
//  iOS_Github_App_Interface
//
//  Created by Ahmet Erkut on 21.10.2023.
//

import UIKit

class ProfileRepoSectionsTableViewCell: UITableViewCell {

    @IBOutlet weak var sectionImageView: UIImageView!
    @IBOutlet weak var sectionName: UILabel!
    @IBOutlet weak var sectionAmount: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
