//
//  ProgressView.swift
//  NiceReminder
//
//  Created by Nicole on 2021/12/6.
//

import SwiftUI


struct ProgressView: View {
    var body: some View {

        VStack {
            
            ProgressView("Time to completion:",
                         value: 0.5)
                .padding(.bottom, 20)

        }

        
    }
}

struct ProgressView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressView()
    }
}
