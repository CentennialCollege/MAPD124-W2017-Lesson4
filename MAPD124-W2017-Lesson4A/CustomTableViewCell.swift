//
//  CustomTableViewCell.swift
//  MAPD124-W2017-Lesson4A
//
//  Created by Tom Tsiliopoulos on 2017-01-31.
//  Copyright © 2017 Tom Tsiliopoulos. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var cellLabel: UILabel!
    @IBOutlet weak var editButton: UIButton!
    @IBOutlet weak var cellSwitch: UISwitch!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
    @IBAction func switchChanged(_ sender: UISwitch) {
        
        if(sender.isOn) {
            cellLabel.textColor = UIColor.black
            cellLabel.font = UIFont.boldSystemFont(ofSize: 20)
        }
        else {
            cellLabel.textColor = UIColor.lightGray
            cellLabel.font = UIFont.italicSystemFont(ofSize: 20)
        }
    }
    

}
