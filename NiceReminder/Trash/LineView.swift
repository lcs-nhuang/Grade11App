//
//  LineView.swift
//  NiceReminder
//
//  Created by Nicole on 2021/12/13.
//

import SwiftUI

struct LineView: View {
    
    @State var shouldHide = false
    
    var body: some View {
        HStack{
        ProgressView("Progress of today's tasks:",
                     value: 1)

         
        Button("🌼") { self.shouldHide = true }
        .buttonStyle(.bordered)
                .opacity(shouldHide ? 0 : 1)
            
        
            

        }
        .padding()
        .navigationTitle("Progress")
    }
}

struct LineView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
        LineView()
        }
    }
}
