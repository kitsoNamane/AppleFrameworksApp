//
//  FrameworkDetailedView.swift
//  AppleFrameworksApp
//
//  Created by Kitso Namane on 10/09/23.
//

import SwiftUI

struct FrameworkDetailedView: View {
    @ObservedObject var viewModel: FrameworkDetaileViewModel
    
    var body: some View {
        VStack(spacing: 20) {
            
            XDismissButton(isShowingDetailedView: $viewModel.isShowingDetailedView.wrappedValue)
            
            Spacer()
            
            FrameworkTitleView(framework: viewModel.framework)
            
            Text(viewModel.framework.description)
                .font(.body)
                .padding()
                
            Spacer()
            
            Link(destination: URL(string: viewModel.framework.urlString) ?? /*@START_MENU_TOKEN@*/URL(string: "https://www.apple.com")!/*@END_MENU_TOKEN@*/, label: {
                AFButton(title: "Learn More")
            })
        }
    }
}

#Preview {
    FrameworkDetailedView(viewModel: FrameworkDetaileViewModel(framework: MockData.sampleFramework, isShowingDetailedView: .constant(false)))
}
