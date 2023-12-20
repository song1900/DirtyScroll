//
//  OverlayContainerCoordinator.swift
//  DirtyScroll
//
//  Created by denver on 2023/12/20.
//

import OverlayContainer
import SwiftUI

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
