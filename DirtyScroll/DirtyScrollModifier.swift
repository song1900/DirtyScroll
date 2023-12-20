//
//  DirtyScrollModifier.swift
//  DirtyScroll
//
//  Created by denver on 2023/12/17.
//

import SwiftUI

public extension View {
    
    /// 뷰에 overlay를 추가 합니다.
    ///
    /// - parameter content: overlay의 내용입니다.
    ///
    /// - returns: 해당 뷰 위에 overlay 추가된 뷰를 반환합니다.
    func dirtyScrollOverlay<Content: View>(_ content: Content) -> some View {
        modifier(AddDirtyScrollOverlayModifier(overlay: content))
    }
    
    
}

public struct AddDirtyScrollOverlayModifier<Overlay: View>: ViewModifier {

    let overlay: Overlay

    // MARK: - ViewModifier

    public func body(content: Content) -> some View {
        OverlayContainerDirtyScrollOverlayView(
            background: content,
            content: overlay
        )
    }
}
