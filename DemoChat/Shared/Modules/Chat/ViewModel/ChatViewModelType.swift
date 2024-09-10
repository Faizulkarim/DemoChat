//
//  ChatViewModelType.swift
//  DemoChat
//
//  Created by Md Faizul karim on 11/9/24.
//  Copyright (c) 2024 ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation
import Combine

// MARK: ChatViewModelInput
struct ChatViewModelInput {
    let viewDidLoad: AnyPublisher<Void, Never>
}

// MARK: ViewModelOutput
struct ChatViewModelOutput {
    let viewState: AnyPublisher<ChatViewState, Never>
}

// MARK: ViewState
enum ChatViewState {
    case viewDidLoad
    case loading(shouldShow: Bool)
}

// MARK: ChatViewModelType
protocol ChatViewModelType {
    /// Passing input publishers to get output publishers for sink i.e to observe
    func transform(input: ChatViewModelInput) -> ChatViewModelOutput
}
