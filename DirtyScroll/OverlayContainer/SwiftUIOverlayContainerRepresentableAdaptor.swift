//
//  SwiftUIOverlayContainerRepresentableAdaptor.swift
//  DirtyScroll
//
//  Created by denver on 2024/01/04.
//

import Foundation
import SwiftUI
import OverlayContainer

struct SwiftUIOverlayContainerRepresentableAdaptor<Content: View, Background: View>: UIViewControllerRepresentable {
    
    let adaptor: OverlayContainerRepresentableAdaptor<Content, Background>
    
    func makeCoordinator() -> OverlayContainerCoordinator {
        adaptor.makeCoordinator()
    }

    func makeUIViewController(context: Context) -> OverlayContainerViewController {
        adaptor.makeUIViewController(context: map(context))
    }

    func updateUIViewController(_ uiViewController: OverlayContainerViewController, context: Context) {
        adaptor.updateUIViewController(uiViewController, context: map(context))
    }

    private func map(_ context: Context) -> OverlayContainerRepresentableAdaptor<Content, Background>.Context {
        OverlayContainerRepresentableAdaptor<Content, Background>.Context(
            coordinator: context.coordinator,
            transaction: context.transaction
        )
    }
}
