//
//  FrameworkGridView.swift
//  Apple FrameWork
//
//  Created by Hammad on 24/01/2024.
//

import SwiftUI

final class FrameworkGridView : ObservableObject{
    
    var slectedFramework : Framework? {
        didSet {
            isShowingDetailView = true
        }
    }
    @Published var isShowingDetailView = false
}

