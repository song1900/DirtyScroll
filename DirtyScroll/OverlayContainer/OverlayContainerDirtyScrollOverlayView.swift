//
//  OverlayContainerDirtyScrollOverlayView.swift
//  DirtyScroll
//
//  Created by denver on 2023/12/20.
//

import SwiftUI

struct OverlayContainerDirtyScrollOverlayView<Background: View, Content: View>: View {
    
    @State private var dragArea: DirtyScrollDragArea = .default
    
    let background: Background
    let content: Content
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

