//
//  FrameworkDetailedView.swift
//  AppleFrameworksApp
//
//  Created by Kitso Namane on 10/09/23.
//

import SwiftUI

struct FrameworkDetailedView: View {
    var framework: Framework
    var body: some View {
        VStack(spacing: 20) {
            FrameworkTitleView(framework: framework)
            Text(framework.description)
                .font(.title3)
            Button("Learn More") {
            }
                .frame(width: 280, height: 50)
                .background(.red)
                .cornerRadius(10)
                .foregroundColor(.white)
        }
        .padding()
    }
}

#Preview {
    FrameworkDetailedView(framework: MockData.frameworks.shuffled()[0])
}
