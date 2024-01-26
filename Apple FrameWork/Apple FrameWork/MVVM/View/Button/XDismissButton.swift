//
//  XDismissButton.swift
//  Apple FrameWork
//
//  Created by Hamza on 25/01/2024.
//

import SwiftUI

struct XDismissButton: View {
        
@Binding var isShowingDetailView: Bool
    
    var body: some View {
        HStack {
            Spacer()
            
            Button {
               isShowingDetailView = false
            } label: {
                
              Image(systemName: "xmark")
                    .foregroundColor(Color(.label))
                    .imageScale(.large)
                    .frame(width: 50 , height: 45)
                
            }
            
        }
        
    }
}

struct XDismissButton_Previews: PreviewProvider {
    static var previews: some View {
        XDismissButton(isShowingDetailView: .constant(false))
    }
}
