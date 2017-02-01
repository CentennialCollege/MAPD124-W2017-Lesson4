//
//  Task.swift
//  MAPD124-W2017-Lesson4A
//
//  Created by Tom Tsiliopoulos on 2017-01-31.
//  Copyright © 2017 Tom Tsiliopoulos. All rights reserved.
//

// Model Class

class Task {
    var name:String
    var completed:Bool
    var note:String
    
    init(name:String, completed:Bool, note:String) {
        self.name = name
        self.completed = completed
        self.note = note
    }
}
