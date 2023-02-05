//
//  HomeFactory.swift
//  RickAndMorty
//
//  Created by Eliu Diaz on 04/02/23.
//

import UIKit

protocol HomeFactory {
    func makeModule() -> UIViewController
}

struct HomeFactoryImp: HomeFactory {
    func makeModule() -> UIViewController {
        let homeMenuController = HomeMenuViewController()
        homeMenuController.title = "Rick and Morty"
        return homeMenuController
    }
}
