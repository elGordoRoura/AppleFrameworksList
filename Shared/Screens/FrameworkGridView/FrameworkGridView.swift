//
//  FrameworkGridView.swift
//  Shared
//
//  Created by Christopher J. Roura on 11/3/20.
//

import SwiftUI

struct FrameworkGridView: View {
    // MARK: - PROPERTIES
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    
    // MARK: - BODY
    
    var body: some View {
        NavigationView {
            List {
                ForEach(MockData.frameworks) { framework in
                    NavigationLink(
                        destination: FrameworkDetailView(
                            framework: framework,
                            isShowingDetailView: $viewModel.isShowingDetailView)) {
                        FrameworkTitleView(framework: framework)
                    } //: NAVIGATIONLINK
                } //: FOREACH
            } //: LIST
            .navigationTitle(" Frameworks")
        } //: NAVIGATIONVIEW
        .accentColor(Color(.label))
    }
}


// MARK: - PREVIEW

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
            .preferredColorScheme(.dark)
        
        FrameworkGridView()
    }
}
