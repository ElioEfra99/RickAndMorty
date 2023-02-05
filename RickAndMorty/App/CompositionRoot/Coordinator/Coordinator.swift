//
//  Coordinator.swift
//  RickAndMorty
//
//  Created by Eliu Diaz on 04/02/23.
//

import UIKit

protocol Coordinator {
    var navigation: UINavigationController { get }
    func start()
}
