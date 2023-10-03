//
//  Task.swift
//  TaskManagementApp
//
//  Created by eyh.mac on 26.09.2023.
//

import SwiftUI

struct Task: Identifiable {
    var id: UUID = UUID()
    var taskTitle: String
    var creationDate: Date = .init()
    var isCompleted: Bool = false
    var tint: Color
}

var sampleTasks: [Task] = [
            .init(taskTitle: "Check Emails", creationDate: Date().addingTimeInterval(-5), isCompleted: true, tint: .black),
            
            .init(taskTitle: "Grocery Shopping", creationDate: Date().addingTimeInterval(-5), isCompleted: true, tint: .black),
            
            .init(taskTitle: "Exercise", creationDate: Date().addingTimeInterval(-5), isCompleted: true, tint: .black),
            
            .init(taskTitle: "Lunch Planning", creationDate: Date().addingTimeInterval(-5), isCompleted: true, tint: .black),
            
            .init(taskTitle: "House Cleaning", creationDate: Date().addingTimeInterval(-5), isCompleted: true, tint: .black),
            
                .init(taskTitle: "Desktop Cleaning", creationDate: Date().addingTimeInterval(-5), isCompleted: true, tint: .black),
  
]

extension Date {
    
    static func updateHour(_ value: Int) -> Date {
        let calendar = Calendar.current
        return calendar.date(byAdding: .hour, value: value, to: .init()) ?? .init()
    }
    
}
