//
//  AppFactory.swift
//  RickAndMorty
//
//  Created by Eliu Diaz on 04/02/23.
//

import UIKit

protocol AppFactory {
    func makeHomeCoordinator(navigation: UINavigationController) -> Coordinator
}

struct AppFactoryImp: AppFactory {
    func makeHomeCoordinator(navigation: UINavigationController) -> Coordinator {
        return FakeCoordinator(navigation: navigation)
    }
}

final class FakeCoordinator: Coordinator {
    var navigation: UINavigationController
    
    init(navigation: UINavigationController) {
        self.navigation = navigation
    }
    
    func start() {
        
    }
}