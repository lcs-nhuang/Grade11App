//
//  CheckBoxView.swift
//  NiceReminder
//
//  Created by Nicole on 2021/12/6.
//

import SwiftUI

struct CheckBoxView: View {
    
    @State var checked = false
    
    var body: some View {
        
        Button(action: {
            checked.toggle()
        }) {
            Image(checked ? "checkbox-on" :  "checkbox-off")
                .renderingMode(.original)
                .resizable()
                .padding(0)
                .frame(width: 20.0, height: 20.0)
        }
    }
}

struct CheckBoxView_Previews: PreviewProvider {
    static var previews: some View {
        CheckBoxView()
    }
}
