//
//  MenuTableViewCell.swift
//  SideOutMenu
//
//  Created by furkan elkatmis on 18.12.2017.
//  Copyright © 2017 furkan.elkatmis. All rights reserved.
//

import UIKit

class MenuTableViewCell: UITableViewCell {



    @IBOutlet weak var imgİcon: UIImageView!
    
    @IBOutlet weak var lblMenuName: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
