//
//  ClassHeaderView.swift
//  NiceReminder
//
//  Created by Nicole on 2021/11/30.
//

import SwiftUI

struct ClassHeaderView: View {
    
    // MARK: Stored properties
    let courseName: String
    let fromTime: String
    let toTime: String
    
    
    // MARK: Computed properties
    var body: some View {
        
        
        VStack(alignment: .leading) {
            HStack{
                
                Text("\(courseName) (\(fromTime)-\(toTime))")
                    .font(.title)
                    .bold()
                
                Button(action: {
                    print("Button was pressed")
                }, label: {
                    Image("plus.circle")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                })
                
            }
            
            .padding()
            
            Divider()
            
            Text("Homework")
                .font(.title3)
                .bold()
                .padding(.horizontal)
        }
    }
}

struct ClassHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ClassHeaderView(courseName: "Art",
                        fromTime: "8:00",
                        toTime:"10:00" )
    }
}
