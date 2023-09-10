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
            Spacer()
            FrameworkTitleView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            Spacer()
            Button{
            
            } label: {
                AFButton(title: "Learn More")
            }
        }
    }
}

#Preview {
    FrameworkDetailedView(framework: MockData.frameworks.shuffled()[0])
}
