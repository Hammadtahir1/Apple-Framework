//
//  FrameworkDetailView.swift
//  Apple FrameWork
//
//  Created by Hamza on 24/01/2024.
//

import SwiftUI


struct FrameworkDetailView: View {
    
    var framework: Framework
    
//    @Binding var isShowingDetailView : Bool
    
    @State private var isShowingSafariView = false
    
    var body: some View {
        VStack{
           
          
            Spacer()
            HorizonalTitleView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button {
                isShowingSafariView = true
                
            } label: {
                AFButtonView(title :  "Learn More")
            }
        }
        .sheet(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
            
        })
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(framework: MockData.sampleFramework)
    }
}
