//
//  UIAlertController.swift
//  Tokofilter
//
//  Created by Hanif Sugiyanto on 17/07/19.
//  Copyright © 2019 Personal Organization. All rights reserved.
//

import UIKit

extension UIAlertController {
    func show() {
        present(animated: true, completion: nil)
    }
    
    func present(animated: Bool, completion: (() -> Void)?) {
        guard let root = UIApplication.shared.keyWindow?.rootViewController else { return }
        present(with: root, animated: animated, completion: completion)
    }
    
    private func present(with viewController: UIViewController, animated: Bool, completion: (() -> Void)?) {
        if let navigationController = viewController as? UINavigationController, let visibleViewController = navigationController.visibleViewController {
            guard let presentedViewController = visibleViewController.presentedViewController else {
                present(with: visibleViewController, animated: animated, completion: completion)
                return
            }
            present(with: presentedViewController, animated: animated, completion: completion)
        } else if let tabBarController = viewController as? UITabBarController, let selectedViewController = tabBarController.selectedViewController {
            present(with: selectedViewController, animated: animated, completion: completion)
        } else {
            viewController.present(self, animated: true, completion: nil)
        }
    }
}
