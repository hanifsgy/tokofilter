//
//  AppCoordinator.swift
//  Tokofilter
//
//  Created by Hanif Sugiyanto on 17/07/19.
//  Copyright © 2019 Personal Organization. All rights reserved.
//

import UIKit

class AppCoordinator: Coordinator {
    var childCoordinator: [Coordinator] = [Coordinator]()
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        
    }
}
