//
//  ViewController.swift
//  MAPD124-W2017-Lesson4A
//
//  Created by Tom Tsiliopoulos on 2017-01-31.
//  Copyright © 2017 Tom Tsiliopoulos. All rights reserved.
//

import UIKit




class ViewController: UIViewController, UITableViewDataSource{

    let data: [String] = ["Task 1", "Task 2", "Task 3"]
    
    var currentTask:Task?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        currentTask = Task(name: "empty Task", completed: false, note: "currentlty empty")
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "rows", for: indexPath) as! CustomTableViewCell
        
        
        cell.cellLabel?.text = data[indexPath.row]
        cell.editButton?.tag = indexPath.row
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let destination = segue.destination as! DetailViewController
        
        // send the task object to the DetailView
        destination.task = currentTask
    }
    
    @IBAction func cellEditButtonTouched(_ sender: UIButton) {
        currentTask?.name = data[sender.tag]
    }
    
    @IBAction func switchChanged(_ sender: UISwitch) {
        
        // check the state of the Switch View
        // set the currentTask.completed property to the Switch State
        if(sender.isOn) {
            currentTask?.completed = true
        }
        else {
            currentTask?.completed = false
        }
    }


}

