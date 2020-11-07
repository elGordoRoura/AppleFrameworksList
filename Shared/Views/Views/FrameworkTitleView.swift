//
//  FrameworkTitleView.swift
//  Apple Frameworks
//
//  Created by Christopher J. Roura on 11/4/20.
//

import SwiftUI

struct FrameworkTitleView: View {
    // MARK: - PROPERTIES
    
    let framework: Framework
    
    
    // MARK: - BODY
    
    var body: some View {
        HStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 70, height: 70)
            
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
                .padding()
        } //: VSTACK
    }
}


// MARK: - PREVIEW

struct FrameworkTitleView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkTitleView(framework: MockData.sampleFramework)
    }
}
