//
//  ChatBuildable.swift
//  DemoChat
//
//  Created by Md Faizul karim on 11/9/24.
//  Copyright (c) 2024 ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation
import UIKit

/// Chat builder protocol.
protocol ChatBuildable {

    /// Builds the Chat view.
    ///
    /// - Returns: Chat details view.
    func build() -> UIViewController

}
