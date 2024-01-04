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
    
    let containerState: OverlayContainerState
    let passiveContainer: OverlayContainerPassiveContainer
    let content: Content
    let background: Background
    
    private let style: OverlayContainerViewController.OverlayStyle = .expandableHeight
    
    func makeCoordinator() -> OverlayContainerCoordinator {
        let contentController = UIHostingController(rootView: content)
        contentController.view.backgroundColor = .clear
        contentController.view.setContentCompressionResistancePriority(.defaultLow, for: .vertical)
        contentController.view.setContentHuggingPriority(.defaultLow, for: .vertical)
        let backgroundController = UIHostingController(rootView: background)
        backgroundController.view.backgroundColor = .clear
        return OverlayContainerCoordinator()
    }
    
    func makeUIViewController(context: Context) -> OverlayContainerViewController {
        let controller = OverlayContainerViewController(style: style)
        controller.delegate = context.coordinator
        return controller
    }
    
    func updateUIViewController(_ container: OverlayContainerViewController,
                                context: Context) {
        context.coordinator.move(
            container,
            to: containerState,
            animated: context.transaction.animation != nil
        )
    }
}

