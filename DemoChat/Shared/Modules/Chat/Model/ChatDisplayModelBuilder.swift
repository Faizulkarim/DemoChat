//
//  ChatDisplayModelBuilder.swift
//  DemoChat
//
//  Created by Md Faizul karim on 11/9/24.
//  Copyright (c) 2024 ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit
import Foundation
import Combine

// MARK: ChatDisplayModelBuilder
struct ChatDisplayModelBuilder {
    
    /// Transform the response model to display model
    ///
    /// - Parameters:
    ///   - model: Codable model.
    static func viewModel<T>(from model: T) -> ChatDisplayModel {
        return ChatDisplayModel()
    }
}
