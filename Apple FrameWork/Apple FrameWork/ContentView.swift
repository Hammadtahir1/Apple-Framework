//
//  ContentView.swift
//  Apple FrameWork
//
//  Created by Hamza on 23/01/2024.
//

import SwiftUI


struct ContentView: View {
    
    @StateObject var viewmodel = FrameworkGridViewModel()
        
//   @StateObject var personVM = PersonViewModel()
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: {
                    ListView(viewModel: viewmodel)
                }, label: {
                    Text("List View")
                        .font(.system(size: 48))
                })
                
                
                NavigationLink(destination: {
                    FrameworkGridView.init(viewModel: FrameworkGridViewModel())
                }, label: {
                    Text("Grid View")
                        .font(.system(size: 48))
                })
            }
//            .onAppear {
//                personVM.practice()
//            }
//        }
//        .navigationTitle("🍎 Frameworks")
//        .sheet(isPresented: $viewmodel.isShowingDetailView ){
//            FrameworkDetailView(framework: viewmodel.slectedFramework!,
//                                isShowingDetailView: $viewmodel.isShowingDetailView)
      }
    
        .accentColor(Color(.label))
    }
    
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


