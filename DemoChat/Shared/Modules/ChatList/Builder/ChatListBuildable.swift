//
//  ChatListBuildable.swift
//  DemoChat
//
//  Created by Md Faizul karim on 10/9/24.
//  Copyright (c) 2024 ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation
import UIKit

/// ChatList builder protocol.
protocol ChatListBuildable {

    /// Builds the ChatList view.
    ///
    /// - Returns: ChatList details view.
    func build() -> UIViewController

}
