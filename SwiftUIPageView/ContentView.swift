//
//  ContentView.swift
//  SwiftUIPageView
//
//  Created by Angelos Staboulis on 8/11/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            VStack{
                PageView()
            }.edgesIgnoringSafeArea(.horizontal)
            .navigationTitle("SwiftUI PageViewController")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ContentView()
}
