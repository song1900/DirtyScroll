//
//  OverlayDragArea.swift
//  DirtyScroll
//
//  Created by denver on 2023/12/26.
//

import Foundation
import SwiftUI

struct DirtyScrollDragArea: Equatable {

    private let area: ActivatedOverlayArea

    init(area: ActivatedOverlayArea) {
        self.area = area
    }

    static var `default`: DirtyScrollDragArea {
        DirtyScrollDragArea(area: .default)
    }

    var isEmpty: Bool {
        area.isEmpty
    }

    func contains(_ rect: CGRect) -> Bool {
        area.contains(rect)
    }

    func contains(_ point: CGPoint) -> Bool {
        return area.contains(point)
    }
}

struct DirtyScrollDragAreaPreferenceKey: PreferenceKey {

    typealias Value = ActivatedOverlayArea

    static var defaultValue: ActivatedOverlayArea = .default

    static func reduce(value: inout Value, nextValue: () -> Value) {
        value.merge(nextValue())
    }
}
