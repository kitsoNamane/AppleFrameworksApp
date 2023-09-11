//
//  SafariView.swift
//  AppleFrameworksApp
//
//  Created by Kitso Namane on 11/09/23.
//

import SwiftUI
import SafariServices


struct SafariView: UIViewControllerRepresentable {
    let url: URL
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> SFSafariViewController {
        SFSafariViewController(url: url)
    }
    
    func updateUIViewController(_ uiViewController: SFSafariViewController,
        context: UIViewControllerRepresentableContext<SafariView>) {
    }

}
