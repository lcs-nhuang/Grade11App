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
                
                ClassHeaderView(courseName: "Math",
                                fromTime: "10:30",
                                toTime: "12:00")
                
//                Spacer()
            }
        }
        .navigationTitle("Today's Work")
        
        
        
        
    }
}

struct ReminderView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ReminderView()
        }
    }
}
