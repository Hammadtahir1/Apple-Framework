//
//  GridView.swift
//  Apple FrameWork
//
//  Created by Hamza on 25/01/2024.
//

import SwiftUI
struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    let columns: [GridItem] =   [GridItem(.flexible()),
         GridItem(.flexible()),
         GridItem(.flexible())
    ]
    
    
    var body: some View {
        //        NavigationView {
        ScrollView {
            LazyVGrid(columns: viewModel.columns) {
                ForEach(MockData.frameworks, id: \.id) { framework in
                    NavigationLink {
                    FrameworkDetailView(framework: framework)
                    } label: {
                        VerticalTitleView(framework: framework)
                        
                    }
                }
            }
            //            }
            
            
            //            .navigationDestination(for: Framework.self) { framework in
//                FrameworkDetailView(framework: viewModel.slectedFramework!, isShowingDetailView: $viewModel.isShowingDetailView)
//            }
        }
        .navigationTitle("🍎 Frameworks")
        .navigationBarTitleDisplayMode(.large)

    }
        
    


//
//struct GridView: View {
//
//    @ObservedObject var viewModel: FrameworkGridViewModel
//    var body: some View {
//
//            LazyVGrid(columns: viewModel.columns) {
//                ForEach(MockData.frameworks , id: \.self) { framework in
//                    NavigationLink(destination:  FrameworkDetailView(framework: framework, isShowingDetailView: $viewModel.isShowingDetailView)) {
//                        FrameworkTitleView(framework: framework)
                          
                       
                    }
                
                
                //
                //            .navigationTitle("🍎 Frameworks")
                //                .sheet(isPresented: $viewmodel.isShowingDetailView ){
                //                    FrameworkDetailView(framework: viewmodel.slectedFramework!,
                //                                        isShowingDetailView: $viewmodel.isShowingDetailView)
                //}
            
    


struct GridView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
//        FrameworkGridView()
//        GridView(viewModel: FrameworkGridViewModel())
    }
}
