//
//  ActivatedOverlayArea.swift
//  DirtyScroll
//
//  Created by denver on 2023/12/26.
//

import SwiftUI

struct ActivatedOverlayArea: Equatable {

    private struct Spot: Equatable {
        let frame: CGRect
    }

    private var spots: [Spot]

    mutating func merge(_ handle: ActivatedOverlayArea) {
        spots += handle.spots
    }

    var isEmpty: Bool {
        spots.isEmpty
    }

    func contains(_ rect: CGRect) -> Bool {
        spots.contains { $0.frame == rect }
    }

    func contains(_ point: CGPoint) -> Bool {
        spots.contains { $0.frame.contains(point) }
    }

    func intersects(_ rect: CGRect) -> Bool {
        spots.contains {
            rect.intersection($0.frame).width >= 0.5
            && $0.frame != .zero
        }
    }
}

extension ActivatedOverlayArea {

    static func active(_ frame: CGRect) -> ActivatedOverlayArea {
        ActivatedOverlayArea(spots: [Spot(frame: frame)])
    }

    static func inactive() -> ActivatedOverlayArea {
        ActivatedOverlayArea(spots: [Spot(frame: .zero)])
    }

    static var `default`: ActivatedOverlayArea {
        .empty
    }

    static var empty: ActivatedOverlayArea {
        ActivatedOverlayArea(spots: [])
    }
}

