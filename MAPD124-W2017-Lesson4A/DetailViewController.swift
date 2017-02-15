//
//  DetailViewController.swift
//  MAPD124-W2017-Lesson4A
//
//  Created by Tom Tsiliopoulos on 2017-01-31.
//  Copyright © 2017 Tom Tsiliopoulos. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
     var task:Task?
    
    @IBOutlet weak var DetailViewLabel: UILabel!
   
    @IBOutlet weak var DetailViewSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        DetailViewLabel.text = task?.name
        DetailViewSwitch.isOn = task!.completed
    }



}
