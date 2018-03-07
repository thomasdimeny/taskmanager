//
//  Main Menu.swift
//  taskManage
//
//  Created by Thomas Dimeny on 3/1/18.
//  Copyright © 2018 Thomas Dimeny. All rights reserved.
//

import Foundation
//main menu below
func mainMenu(){
    print("""
   
    to add a task, type 'add'
    
    to remove a task, type 'remove'
    
    to view a task, type 'view' (view menu allows to mark tasks as complete)

    to view an incompleted task, type 'incomplete'
    
    to view a complete task, type 'complete'
    
    
""")
    
    let userInput = readLine()!
    
    if userInput == "add"{
        addTask()
        
    } else if userInput == "remove" {
        removeTask()
        
    } else if userInput == "view"{
        viewTasks()
        
    } else if userInput == "complete"{
        completeTasks()
        
    } else if userInput == "incomplete"{
        incompleteTasks()
    }
        
    else {
        mainMenu()
    }
    
}
