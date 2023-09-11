//
//  XDismissButton.swift
//  AppleFrameworksApp
//
//  Created by Kitso Namane on 11/09/23.
//

import SwiftUI

struct XDismissButton: View {
    @Binding var isShowingDetailedView: Bool
    var body: some View {
        HStack {
                Spacer()
                
                Button {
                    isShowingDetailedView = false
                } label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44, height: 44)
                }
            }
            .padding()
    }
}

#Preview {
    XDismissButton(isShowingDetailedView: .constant(true))
}
