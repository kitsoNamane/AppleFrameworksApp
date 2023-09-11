//
//  AFButton.swift
//  AppleFrameworksApp
//
//  Created by Kitso Namane on 10/09/23.
//

import SwiftUI

struct AFButton: View {
    var title: String
    var body: some View {
        Text(title)
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width: 280, height: 50)
            .background(.red)
            .cornerRadius(10)
            .foregroundColor(.white)
    }
}

#Preview {
    AFButton(title: "Test Title")
}
