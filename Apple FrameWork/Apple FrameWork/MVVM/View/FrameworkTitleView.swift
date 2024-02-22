//
//  FrameworkTitleView.swift
//  Apple FrameWork
//
//  Created by Hamza on 25/01/2024.
//

import SwiftUI

struct HorizonalTitleView: View {
    let framework: Framework
    
    
    var body: some  View {
        HStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 65 , height: 65)
            
            Text(framework.name)
                .foregroundColor(Color(.white))
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
                .padding()
        }
    }
}

struct VerticalTitleView: View {
    let framework: Framework
    
    
    var body: some  View {
        VStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 65 , height: 65)
            
            Text(framework.name)
                .foregroundColor(Color(.label))
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
                .padding()
        }
        
    }
}

//struct FrameworkTitleView_Previews: PreviewProvider {
//    static var previews: some View {
//        FrameworkTitleView(framework: MockData.sampleFramework)
//    }
//}
