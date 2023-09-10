//
//  FrameworkDetailedView.swift
//  AppleFrameworksApp
//
//  Created by Kitso Namane on 10/09/23.
//

import SwiftUI

struct FrameworkDetailedView: View {
    @Binding var isShowingDetailedView: Bool
    
    var framework: Framework
    
    var body: some View {
        VStack(spacing: 20) {
            HStack {
                Spacer()
                
                Button {
                    isShowingDetailedView = false
                } label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44, height: 44)
                }
            }
            .padding()
            
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
    FrameworkDetailedView(isShowingDetailedView: .constant(false), framework: MockData.frameworks.shuffled()[0])
}
