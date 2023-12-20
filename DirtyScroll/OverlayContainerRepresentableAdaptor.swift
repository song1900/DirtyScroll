//
//  OverlayContainerRepresentableAdaptor.swift
//  DirtyScroll
//
//  Created by denver on 2023/12/20.
//

import SwiftUI
import OverlayContainer

struct OverlayContainerRepresentableAdaptor<Content: View, Background: View> {

    struct Context {
        let coordinator: OverlayContainerCoordinator
        let transaction: Transaction
    }
    
    let content: Content
    let background: Background
    
    private let style: OverlayContainerViewController.OverlayStyle = .expandableHeight
    
    func makeCoordinator() {
        let contentController = UIHostingController(rootView: content)
        contentController.view.backgroundColor = .clear
        contentController.view.setContentCompressionResistancePriority(.defaultLow, for: .vertical)
        contentController.view.setContentHuggingPriority(.defaultLow, for: .vertical)
        let backgroundController = UIHostingController(rootView: background)
        backgroundController.view.backgroundColor = .clear
//        return
    }
    
    func makeUIViewController(context: Context) -> OverlayContainerViewController {
        let controller = OverlayContainerViewController(style: style)
        controller.delegate = context.coordinator
        return controller
    }
}

