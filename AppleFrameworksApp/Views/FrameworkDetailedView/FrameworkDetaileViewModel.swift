//
//  FrameworkDetaileViewModel.swift
//  AppleFrameworksApp
//
//  Created by Kitso Namane on 24/09/23.
//

import SwiftUI

final class FrameworkDetaileViewModel: ObservableObject {
    let framework: Framework
    var isShowingDetailedView: Binding<Bool>
    @Published var isShowingSafariView = false
    
    init(framework: Framework, isShowingDetailedView: Binding<Bool>, isShowingSafariView: Bool = false) {
        self.framework = framework
        self.isShowingDetailedView = isShowingDetailedView
        self.isShowingSafariView = isShowingSafariView
    }
}
