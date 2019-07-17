//
//  Coordinator.swift
//  Tokofilter
//
//  Created by Hanif Sugiyanto on 17/07/19.
//  Copyright © 2019 Personal Organization. All rights reserved.
//

import UIKit

protocol Coordinator: AnyObject {
    var childCoordinator: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }
    func start()
}

extension Coordinator {
    /// Add child
    func add(child: Coordinator) {
        guard !childCoordinator.contains(where: { $0 === child }) else { return }
        childCoordinator.append(child)
    }
    /// Remove child
    func remove(child: Coordinator?) {
        guard let index = childCoordinator.firstIndex(where: { $0 === child }) else { return }
        childCoordinator.remove(at: index)
    }
    /// Remove All
    func removeAll() {
        childCoordinator.removeAll()
    }
}

protocol CoordinatorOutput {
    var finish: (() -> Void)? { get set }
}
