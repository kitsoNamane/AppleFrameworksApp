//
//  FrameworkGridViewModel.swift
//  AppleFrameworksApp
//
//  Created by Kitso Namane on 10/09/23.
//

import SwiftUI


final class FrameworkGridViewModel: ObservableObject {
    var selectedFramework: Framework? { didSet { isShowingDetailView = true } }
    
    let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    
    @Published var isShowingDetailView = false
}
