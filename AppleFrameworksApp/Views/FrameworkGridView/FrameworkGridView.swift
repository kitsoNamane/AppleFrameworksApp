//
//  FrameworkGridView.swift
//  AppleFrameworksApp
//
//  Created by Kitso Namane on 10/09/23.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(MockData.frameworks) { framework in
                    NavigationLink(destination: FrameworkDetailedView(isShowingDetailedView: $viewModel.isShowingDetailView, framework: framework)) {
                        FrameworkTitleView(framework: framework)
                    }
                }
                .navigationTitle("Apple Frameworks")
            }
        }
        .accentColor(Color(.label))
    }
}

#Preview {
    FrameworkGridView()
}
