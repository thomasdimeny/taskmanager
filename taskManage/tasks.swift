//
//  tasks.swift
//  taskManage
//
//  Created by Thomas Dimeny on 3/1/18.
//  Copyright © 2018 Thomas Dimeny. All rights reserved.
//

import Foundation
class UserTasks {
    var name: String
    var describe: String
    var complete = false
    var date: Date
    
    init(name: String, describe: String, date: Date){
        self.name = name
        self.describe = describe
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM/dd/yyyy"
        let dateString  = dateFormatter.string(from: date)
        let formattedDate = dateFormatter.date(from: dateString)
        self.date = formattedDate!
    
    
}
}
