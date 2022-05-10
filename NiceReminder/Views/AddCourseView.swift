//
//  AddCourseView.swift
//  NiceReminder
//
//  Created by Nicole on 2022/5/9.
//

import SwiftUI

struct AddCourseView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @State private var newCourseName: String = ""
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20){
            HStack{
                Button("Cancel") {
                    presentationMode.wrappedValue.dismiss()
                }
                
                Spacer()
                
                Button("Done"){
                    presentationMode.wrappedValue.dismiss()
                }.disabled(false)
                    
            }
            
            VStack{
                TextField("New Course", text: $newCourseName)
                    .textFieldStyle(.roundedBorder)
                    .padding()
            }
            Spacer()
        }
        .padding()
    }
}

struct AddCourseView_Previews: PreviewProvider {
    static var previews: some View {
        AddCourseView()
    }
}
