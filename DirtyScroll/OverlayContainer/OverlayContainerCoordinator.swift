//
//  OverlayContainerCoordinator.swift
//  DirtyScroll
//
//  Created by denver on 2023/12/20.
//

import OverlayContainer
import SwiftUI

// (gz) 2022-01-30 `SwiftUI` compares struct properties one by one to determine either to update the view or not.
// To avoid useless updates, we wrap th e passive values inside this class.
class OverlayContainerPassiveContainer: Equatable {

    var onTranslation: ((OverlayTranslation) -> Void)?
    var onNotchChange: ((Int) -> Void)?

    static func == (lhs: OverlayContainerPassiveContainer, rhs: OverlayContainerPassiveContainer) -> Bool {
        lhs === rhs
    }
}

struct OverlayContainerState: Equatable {
//    let dragArea: DynamicOverlayDragArea
//    let drivingScrollViewProxy: DynamicOverlayScrollViewProxy
    let notchIndex: Int?
    let disabledNotches: Set<Int>
//    let layout: OverlayContainerLayout
}

class OverlayContainerCoordinator {
    
}

extension OverlayContainerCoordinator: OverlayContainerViewControllerDelegate {
    func overlayContainerViewController(_ containerViewController: OverlayContainer.OverlayContainerViewController, heightForNotchAt index: Int, availableSpace: CGFloat) -> CGFloat {
        return 0.0
    }
    
    func numberOfNotches(in containerViewController: OverlayContainer.OverlayContainerViewController) -> Int {
        return 0
    }
    
    
}
