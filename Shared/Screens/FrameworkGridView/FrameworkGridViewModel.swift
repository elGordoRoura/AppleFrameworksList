//
//  FrameworkGridViewModel.swift
//  Apple Frameworks
//
//  Created by Christopher J. Roura on 11/4/20.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    // MARK: - PROPERTIES
    
    var selectedFramework: Framework? {
        didSet {
            isShowingDetailView = true
        }
    }
    
    @Published var isShowingDetailView = false
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())
    ]
}
