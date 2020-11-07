//
//  AFButton.swift
//  Apple Frameworks
//
//  Created by Christopher J. Roura on 11/4/20.
//

import SwiftUI

struct AFButton: View {
    // MARK: - PROPERTIES
    
    var title: String
    
    
    // MARK: - BODY
    
    var body: some View {
        Text(title)
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width: 280, height: 50)
            .background(Color.red)
            .foregroundColor(.white)
            .cornerRadius(10)
    }
}


// MARK: - PREVIEW

struct AFButton_Previews: PreviewProvider {
    static var previews: some View {
        AFButton(title: "Test Title")
            .previewLayout(.sizeThatFits)
            .padding()
        
        AFButton(title: "Test Title")
    }
}
