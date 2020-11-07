//
//  FrameworkDetailView.swift
//  Apple Frameworks
//
//  Created by Christopher J. Roura on 11/3/20.
//

import SwiftUI

struct FrameworkDetailView: View {
    // MARK: - PROPERTIES
    
    var framework: Framework
    
    @Binding var isShowingDetailView: Bool
    
    @State private var isShowingSafariView = false
    
    
    // MARK: - BODY
    
    var body: some View {
        VStack {
            
            FrameworkTitleView(framework: framework)
                .padding(.top)
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button {
                isShowingSafariView = true
            } label: {
                AFButton(title: "Learn More")
            }
        } //: VSTACK
        .sheet(isPresented: $isShowingSafariView) {
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.developer.apple.com")!).edgesIgnoringSafeArea(.bottom)
        }
    }
}


// MARK: - PREVIEW

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(framework: MockData.sampleFramework, isShowingDetailView: .constant(false))
            .preferredColorScheme(.dark)
        
        FrameworkDetailView(framework: MockData.sampleFramework, isShowingDetailView: .constant(false))
    }
}
