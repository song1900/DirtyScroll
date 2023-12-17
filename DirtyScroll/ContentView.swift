//
//  ContentView.swift
//  DirtyScroll
//
//  Created by denver on 2023/12/17.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
        .dirtyScrollOverlay(Color.orange)
    }
}

#Preview {
    ContentView()
}
