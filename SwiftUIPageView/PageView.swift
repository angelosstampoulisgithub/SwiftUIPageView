//
//  PageView.swift
//  SwiftUIPageView
//
//  Created by Angelos Staboulis on 9/11/24.
//

import Foundation
import SwiftUI
struct PageView:UIViewControllerRepresentable{
        typealias UIViewControllerType = PageViewController
       
       func makeUIViewController(context: Context) -> PageViewController {
           return PageViewController(transitionStyle: .pageCurl, navigationOrientation: .horizontal)
       }
       
       func updateUIViewController(_ uiViewController: PageViewController, context: Context) {
           // Updates the state of the specified view controller with new information from SwiftUI.
       }
}
