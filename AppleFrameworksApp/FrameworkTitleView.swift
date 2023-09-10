//
//  FrameworkView.swift
//  AppleFrameworksApp
//
//  Created by Kitso Namane on 10/09/23.
//

import SwiftUI

struct FrameworkTitleView: View {
    var imageUrl: String
    var frameworkName: String
     
    var body: some View {
        VStack {
            Image(imageUrl)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 90, height: 90)
            Text(frameworkName)
                .font(.title)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
    }
}

#Preview {
    FrameworkTitleView(imageUrl: "arkit", frameworkName: "ARKit")
}
