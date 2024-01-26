//
//  FrameworkGridViewModel.swift
//  Apple FrameWork
//
//  Created by Hammad on 24/01/2024.
//

import SwiftUI

final class FrameworkGridViewModel : ObservableObject{
    
    var slectedFramework : Framework? {
        didSet {isShowingDetailView = true }
    }
    
    @Published var isShowingDetailView = false
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())
                               ]
    
}

