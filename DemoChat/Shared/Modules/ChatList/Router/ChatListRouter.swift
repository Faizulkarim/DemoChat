//
//  ChatListRouter.swift
//  DemoChat
//
//  Created by Md Faizul karim on 10/9/24.
//  Copyright (c) 2024 ___ORGANIZATIONNAME___. All rights reserved.
//
import Foundation
import UIKit

/// ChatListRouter list router. Responsible for navigating from the view.
final class ChatListRouter {
    /// The navigation controller to use for navigation.
    weak var navigationController: UINavigationController?
    
    /// View controller used to present other views.
    weak var viewController: UIViewController?
    private let dependencyManager: DependencyManager
    
    /// Initializes the view router.
    ///
    /// - Parameter dependencyManager: The app dependency manager.
    init(dependencyManager: DependencyManager) {
        self.dependencyManager = dependencyManager
    }
    
    // MARK: - Instance functions
    
    /*
    /// Example method to implement for route.
    ///
    func routeToView() {}
    */
}
