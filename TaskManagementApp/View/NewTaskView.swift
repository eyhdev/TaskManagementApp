//
//  NewTaskView.swift
//  TaskManagementApp
//
//  Created by eyh.mac on 3.10.2023.
//

import SwiftUI

struct NewTaskView: View {
    
    @Environment(\.dismiss) private var dismiss
    @State private var taskTitle: String = ""
    @State private var taskDate: Date = .init()
    @State private var taskColor: Color = .black
    
    var body: some View {
        VStack(alignment: .leading, spacing: 15, content: {
            Button(action: {
                dismiss()
            }, label: {
                Image(systemName: "xmark.circle.fill")
                    .font(.title)
                    .tint(.white)
            })
            .hSpacing(.leading)
            VStack(alignment: .leading,spacing: 8, content: {
                Text("Task Title")
                    .font(.caption)
                    .foregroundStyle(.gray)
                
                TextField("Go for a walk!", text: $taskTitle)
                    .padding(.horizontal, 12)
                    .padding(.horizontal, 15)
                    .background(.gray.opacity(0.25), in: .rect(cornerRadius: 5))
                
                
            })
            .padding(.top, 5)
            
                VStack(alignment: .leading,spacing: 8, content: {
                    Text("Task Date")
                        .font(.caption)
                        .foregroundStyle(.gray)
                    
                    DatePicker("", selection: $taskDate)
                        .datePickerStyle(.compact)
                        .scaleEffect(0.9, anchor: .leading)
                })
                Spacer()
            
         Button(action: {}, label: {
             Text("New Task")
                 .font(.title3)
                 .fontWeight(.semibold)
                 .textScale(.secondary)
                 .foregroundStyle(.black)
                 .hSpacing(.center)
                 .padding(.vertical, 12)
                 .background(.white, in: .rect(cornerRadius: 10))
             
            })
        })
        .padding(15)
    }
}

#Preview {
    NewTaskView()
        .preferredColorScheme(.dark)
        .vSpacing(.bottom)
}
