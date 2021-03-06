//
//  MainScreenFlowController.swift
//  SwapiMVVM
//
//  Created by Ariel Bogdziewicz on 27/09/2019.
//  Copyright © 2019 Ariel Bogdziewicz. All rights reserved.
//
//  MVVM module
//  Template designed by Ariel Bogdziewicz.
//

import UIKit

class MainScreenFlowController: FlowController {
    
    // MARK: - Dependencies

    weak var navigationController: UINavigationController!
    weak var viewController: MainScreenViewController!
    let dependencyManager: DependencyManager

    // MARK: - Initializers

    init(navigationController: UINavigationController, viewController: MainScreenViewController, dependencyManager: DependencyManager) {
        self.navigationController = navigationController
        self.viewController = viewController
        self.dependencyManager = dependencyManager
        super.init(
            navigationController: navigationController,
            parentController: viewController,
            dependencyManager: dependencyManager)
    }

    // MARK: - Actions

    func showPeople(url: String) {
        PeopleFactory.pushIn(
            navigationController: self.navigationController,
            url: url,
            dependencyManager: self.dependencyManager)
    }
}
