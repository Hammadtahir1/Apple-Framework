//
//  AFButtonView.swift
//  Apple FrameWork
//
//  Created by Hamza on 24/01/2024.
//

import SwiftUI

struct AFButtonView: View {
    
    var title : String
    
    var body: some View {
        
        Text(title)
            .fontWeight(.semibold)
            .frame(width: 250, height: 45)
            .background(Color.yellow)
            .foregroundColor(.white)
            .cornerRadius(10)
       
    }
}

struct AFButtonView_Previews: PreviewProvider {
    static var previews: some View {
        AFButtonView(title: "Test Title")
    }
}
