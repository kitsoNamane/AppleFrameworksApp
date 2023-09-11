//
//  FrameworkView.swift
//  AppleFrameworksApp
//
//  Created by Kitso Namane on 10/09/23.
//

import SwiftUI

struct FrameworkTitleView: View {
    let framework: Framework
     
    var body: some View {
        VStack {
            Image(framework.imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 90, height: 90)
            Text(framework.name)
                .font(.title)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
        .padding()
    }
}

#Preview {
    FrameworkTitleView(framework: MockData.frameworks.shuffled()[0])
}
