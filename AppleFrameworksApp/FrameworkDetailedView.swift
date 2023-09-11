//
//  FrameworkDetailedView.swift
//  AppleFrameworksApp
//
//  Created by Kitso Namane on 10/09/23.
//

import SwiftUI

struct FrameworkDetailedView: View {
    @Binding var isShowingDetailedView: Bool
    @State private var isShowingSafariView = false
    
    var framework: Framework
    
    var body: some View {
        VStack(spacing: 20) {
            
            XDismissButton(isShowingDetailedView: $isShowingDetailedView)
            
            Spacer()
            
            FrameworkTitleView(framework: framework)
            
            Text(framework.description)
                .font(.body)
                .padding()
                
            Spacer()
            
            Button{
                isShowingSafariView = true
            } label: {
                AFButton(title: "Learn More")
            }
        }
        .fullScreenCover(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
        })
    }
}

#Preview {
    FrameworkDetailedView(isShowingDetailedView: .constant(false), framework: MockData.frameworks.shuffled()[0])
}
