//
//  TabLandingView.swift
//  NiceReminder
//
//  Created by Nicole on 2021/11/30.
//

import SwiftUI

struct TabLandingView: View {
    var body: some View {
        NavigationView {
            TabView {
                ReminderView()
                    .tabItem {
                        Label("Menu", systemImage: "list.dash")
                    }
                
                LineView()
                    .tabItem {
                        Label("Order", systemImage: "square.and.pencil")
                    }
                
                
            }
        }
        
    }
}

struct TabLandingView_Previews: PreviewProvider {
    static var previews: some View {
        TabLandingView()
    }
}
