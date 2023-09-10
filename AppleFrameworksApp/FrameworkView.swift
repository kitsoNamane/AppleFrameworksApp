//
//  FrameworkView.swift
//  AppleFrameworksApp
//
//  Created by Kitso Namane on 10/09/23.
//

import SwiftUI

struct FrameworkView: View {
    var imageUrl: String
    var frameworkName: String
     
    var body: some View {
        VStack {
            Image(imageUrl)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text(frameworkName)
            .font(.system(size: 36, weight: .medium, design: .default))
            .foregroundStyle(.white)
        }
        .frame(width: 180, height: 180)
        .background(.teal)
    }
}

#Preview {
    FrameworkView(imageUrl: "arkit", frameworkName: "ARKit")
}
