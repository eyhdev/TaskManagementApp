//
//  TaskRowView.swift
//  TaskManagementApp
//
//  Created by eyh.mac on 3.10.2023.
//

import SwiftUI

struct TaskRowView: View {
    
    @Binding var task: Task
    
    var body: some View {
        HStack(alignment: .top, spacing: 15){
            Circle()
                .fill(indicatorColor)
                .frame(width: 5, height: 5)
                .padding(1)
                .background(.blue.shadow(.drop(color: .black.opacity(0.1), radius: 3)), in: .circle)
                .overlay{
                    Circle()
                        .frame(width: 50, height: 50)
                        .blendMode(.destinationOver)
                        .onTapGesture {
                            withAnimation(.snappy) {
                               task.isCompleted.toggle()
                           }
                        }
                }
            
            VStack(alignment: .leading, spacing: 8, content: {
                Text(task.taskTitle)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .strikethrough(task.isCompleted, pattern: .solid, color: .white)
                
                Label(task.creationDate.format("hh:mm a"), systemImage: "clock")
                    .font(.caption)
                    .foregroundStyle(.white)
            })
            .padding(15)
            .hSpacing(.leading)
            .background(Color.gray.opacity(0.2), in: .rect(topLeadingRadius: 15, bottomLeadingRadius: 15))
            .strikethrough(task.isCompleted, pattern: .solid, color: .white)
            .offset(y: -8)
            
        }
    }
    var indicatorColor: Color {
        if task.isCompleted {
            return .gray
        }
        return task.creationDate.isSameHour ? .white : (task.creationDate.isPast ? .red : .black)
    }
}

#Preview {
    ContentView()
}
