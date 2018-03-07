//
//  input handler.swift
//  taskManage
//
//  Created by Thomas Dimeny on 3/1/18.
//  Copyright © 2018 Thomas Dimeny. All rights reserved.
//

import Foundation
//func quitProgram() {
//    print("""
//
//Would you like to quit the program? type yes or no
//
//""")
//    let userInput = readLine()!
//    if userInput == "yes" {
//        exit(0)
//    } else if userInput == "no"{
//        mainMenu()
//    } else {
//        print("Valid value please")
//        quitProgram()
//    }
//}






func addTask() {
    print("What task would you like to add? ")
    let taskName = readLine()!
    print("How many days until it's due? Type a number")
    var taskDate = Int(readLine()!)!
    print("Add a description")
    let taskDesc = readLine()!
    let calendar = Calendar.current
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "MM/dd/yyyy"
    let newCal = calendar.date(byAdding: .day, value: taskDate, to: Date())
    let papTask = UserTasks(name: taskName, describe: taskDesc, date: newCal!)
    taskLibrary.append(papTask)
    print("Task added!")
    
    mainMenu()
}






func removeTask() {
    print("Which task would you like to remove? Type number 0 to remove the first task, 1 for the second task, etc.")
    for (n, c) in taskLibrary.enumerated()
    {
        if c.complete == false {
            print("\(n): '\(c.name, c.describe, c.date)'")
        }
    }
    let userInput = Int(readLine()!)
    if let userInput = userInput {
        if  userInput > taskLibrary.count - 1 {
            print("Please enter a valid number")
            removeTask()
        } else {
            taskLibrary.remove(at: userInput)
            print("Task removed!")
            mainMenu()
        }
        
    } else {
        print("Please put in a number")
        removeTask()
    }
}





func viewTasks(){
    print("Here are your tasks, completed and uncompleted:")
    for (n, c) in taskLibrary.enumerated() {
        print("\(n): '\(c.name)'")
    }
    print("Would you like to view a specific task? If not, you will be taken back to the main menu. Type yes or no.")
    let userAnswer = readLine()!
    if userAnswer == "no"{
        mainMenu()
    } else {
    print("To see a specific task, type the number that goes before it.")
    let userInput = Int(readLine()!)
    if let userInput = userInput {
        if userInput > taskLibrary.count - 1 {
            print("Please put in a valid number")
            viewTasks()
        } else {
            print(taskLibrary[userInput].name)
            print(taskLibrary[userInput].describe)
            print(taskLibrary[userInput].date)
        }
        print("would you like to mark this task as complete? Type yes or no")
        let isComplete = readLine()!
        if isComplete == "yes"{
            taskLibrary[userInput].complete = true
            print("this task is now complete")
        } else {
            print("this task remains incomplete.")
        }
    }
    }
    mainMenu()
    
}


func completeTasks() {
    print("Here are your complete tasks")
    for (n, c) in taskLibrary.enumerated() {
        if c.complete == true {
            print("\(n): '\(c.name)'")
        }
    }
    mainMenu()
}

func incompleteTasks() {
    print("Here are your incomplete tasks")
    for (n, c) in taskLibrary.enumerated() {
        if c.complete == false {
            print("\(n): '\(c.name)'")
        }
    }
    mainMenu()
}

