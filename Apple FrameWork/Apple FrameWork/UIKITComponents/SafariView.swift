//
//  SafariView.swift
//  Apple FrameWork
//
//  Created by Hamza on 25/01/2024.
//

import SwiftUI
import SafariServices

struct SafariView: UIViewControllerRepresentable {    
    
    let url: URL
    
    func makeUIViewController(context: Context) -> some SFSafariViewController {
        return SFSafariViewController(url: url)
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
}
