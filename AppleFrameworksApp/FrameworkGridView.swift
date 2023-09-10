//
//  FrameworkGridView.swift
//  AppleFrameworksApp
//
//  Created by Kitso Namane on 10/09/23.
//

import SwiftUI

struct FrameworkGridView: View {
    let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]

    var body: some View {
        LazyVGrid(columns: columns) {
            FrameworkTitleView(imageUrl: "arkit", frameworkName: "ARKit")
            FrameworkTitleView(imageUrl: "arkit", frameworkName: "ARKit")
            FrameworkTitleView(imageUrl: "arkit", frameworkName: "ARKit")
            FrameworkTitleView(imageUrl: "arkit", frameworkName: "ARKit")
            FrameworkTitleView(imageUrl: "arkit", frameworkName: "ARKit")
            FrameworkTitleView(imageUrl: "arkit", frameworkName: "ARKit")
        }
    }
}

#Preview {
    FrameworkGridView()
}
