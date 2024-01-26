//
//  ListView.swift
//  Apple FrameWork
//
//  Created by Hamza on 25/01/2024.
//

import SwiftUI

struct ListView: View {
    
    @ObservedObject var viewModel: FrameworkGridViewModel
    
    var body: some View {
        List{
            ForEach(MockData.frameworks , id: \.self) { framework in
                NavigationLink {
                    FrameworkDetailView(framework: framework)
                } label: {
                    HorizonalTitleView(framework: framework)
                }
            }
        }
        .navigationTitle("Frameworks List")
        .navigationBarTitleDisplayMode(.large)
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
//        ListView(viewModel: FrameworkGridViewModel())
    }
}
