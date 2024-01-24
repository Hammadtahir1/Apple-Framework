//
//  ContentView.swift
//  Apple FrameWork
//
//  Created by Hamza on 23/01/2024.
//

import SwiftUI


    struct ContentView: View {
        @StateObject var viewmodel = FrameworkGridView()
        
        let columns: [GridItem] = [GridItem(.flexible()),
                                   GridItem(.flexible()),
                                   GridItem(.flexible())]
        
        var body: some View {
            NavigationView {
                ScrollView {
                    LazyVGrid(columns: columns){
                        ForEach(MockData.frameworks , id: \.self) { framework in
                        FrameworkTitleView(framework :framework)
                                .onTapGesture {
                                    viewmodel.slectedFramework = framework
                                }
                        }
                    }
                }
                .navigationTitle("🍎 Frameworks")
            .sheet(isPresented: $viewmodel.isShowingDetailView ){
                    FrameworkDetailView(framework: viewmodel.slectedFramework!,
                                        isShowingDetailView: $viewmodel.isShowingDetailView)
                }
            }
           
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    
    struct FrameworkTitleView: View{
        let framework: Framework
        
        
        var body: some  View {
            VStack{
                Image(framework.imageName)
                    .resizable()
                    .frame(width: 90 , height: 90)
                Text(framework.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .scaledToFit()
                    .minimumScaleFactor(0.4)
            }
            .padding()
        }
    }
