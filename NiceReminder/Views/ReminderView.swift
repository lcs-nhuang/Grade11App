//
//  ReminderView.swift
//  NiceReminder
//
//  Created by Nicole on 2021/11/29.
//

import SwiftUI

struct ReminderView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                
                ClassHeaderView(courseName: "Art",
                                fromTime: "8:00",
                                toTime: "10:00")
                    .padding(.top,40)
                
                Group{
                    
                    HStack{
                        Text("1. Finish the drawing")
                        CheckBoxView(checked: true)
                    }
                    
                    HStack{
                        Text("2. Watch the video")
                        CheckBoxView(checked: false)
                    }
                    
                    HStack{
                        Text("3. Write review")
                        CheckBoxView(checked: false)
                    }
                }
                .padding(.top)
                .padding(.horizontal)
                
                ClassHeaderView(courseName: "Math",
                                fromTime: "10:30",
                                toTime: "12:00")
            }
        }
        .navigationTitle("Today's Work")
        .toolbar {
            ToolbarItem(placement: .primaryAction) {
                Button("Add Courses") {}
            }
            
            //            ToolbarItem(placement: .bottomBar) {
            //                Button("Filter") {}
            //            }
        }
        
    }
}

struct ReminderView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ReminderView()  
        }
    }
}
