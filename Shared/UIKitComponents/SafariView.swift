//
//  SafariView.swift
//  Apple Frameworks
//
//  Created by Christopher J. Roura on 11/4/20.
//

import SwiftUI
import SafariServices

struct SafariView: UIViewControllerRepresentable {
    // MARK: - PROPERTIES
    
    let url: URL
    
    
    // MARK: - FUNCTIONS
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> SFSafariViewController {
        SFSafariViewController(url: url)
    }
    
    
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SafariView>) {}
}
