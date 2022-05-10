//
//  ReminderView.swift
//  NiceReminder
//
//  Created by Nicole on 2021/11/29.
//

import SwiftUI

struct ReminderView: View {
    
    @State private var isPrsented: Bool = false
    
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
                        
                    }
                    
                    HStack{
                        Text("2. Watch the video")
                        
                    }
                    
                    HStack{
                        Text("3. Write review")
                        
                    }
                }
                .padding(.top)
                .padding(.horizontal)
                
                ClassHeaderView(courseName: "Math",
                                fromTime: "10:30",
                                toTime: "12:00")
            }
        }
        
        
        .navigationTitle("Today's Tasks")
        
        .toolbar {
            ToolbarItem(placement: .primaryAction) {
                Button("Add Courses") {
                    isPrsented = true
                }
                .sheet(isPresented: $isPrsented) {
                    Text("Yeah!")
                }
            }

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
