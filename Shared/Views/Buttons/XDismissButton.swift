//
//  XDismissButton.swift
//  Apple Frameworks
//
//  Created by Christopher J. Roura on 11/4/20.
//

import SwiftUI

struct XDismissButton: View {
    // MARK: - PROPERTIES
    
    @Binding var isShowingDetailView: Bool
    
    
    // MARK: - BODY
    
    var body: some View {
        HStack {
            Spacer()
            
            Button {
                isShowingDetailView = false
            } label: {
                Image(systemName: "xmark.circle.fill")
                    .foregroundColor(Color(.label))
                    .imageScale(.large)
                    .frame(width: 44, height: 44)
            }
        } //: HSTACK
        .padding()
    }
}


// MARK: - PREVIEW

struct XDismissButton_Previews: PreviewProvider {
    static var previews: some View {
        XDismissButton(isShowingDetailView: .constant(false))
    }
}
