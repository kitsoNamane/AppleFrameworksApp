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
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: viewModel.columns) {
                    ForEach(MockData.frameworks) { framework in
                        NavigationLink(value: framework) {
                            FrameworkTitleView(framework: framework)
                        }
                    }
                }
            }
            .navigationTitle("Apple Frameworks")
            .navigationDestination(for: Framework.self) { framework in
                FrameworkDetailedView(viewModel: FrameworkDetaileViewModel(framework: viewModel.selectedFramework ?? MockData.sampleFramework, isShowingDetailedView: $viewModel.isShowingDetailView))
            }
        }
    }
}

#Preview {
    FrameworkGridView()
}
