//
//  LoginBuildable.swift
//  DemoChat
//
//  Created by Md Faizul karim on 10/9/24.
//  Copyright (c) 2024 ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation
import UIKit

/// Login builder protocol.
protocol LoginBuildable {

    /// Builds the Login view.
    ///
    /// - Returns: Login details view.
    func build() -> UIViewController

}
