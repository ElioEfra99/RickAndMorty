//
//  AppCoordinator.swift
//  RickAndMorty
//
//  Created by Eliu Diaz on 04/02/23.
//

import UIKit

final class AppCoordinator: Coordinator {
    var navigation: UINavigationController
    private let appFactory: AppFactory
    
    init(navigation: UINavigationController, appFactory: AppFactory, window: UIWindow?) {
        self.navigation = navigation
        self.appFactory = appFactory
        configWindow(window: window)
    }
    
    func start() {
        let coordinator = appFactory.makeHomeCoordinator(navigation: navigation)
        coordinator.start()
    }
    
    private func configWindow(window: UIWindow?) {
        window?.rootViewController = navigation
        window?.makeKeyAndVisible()
    }
}
