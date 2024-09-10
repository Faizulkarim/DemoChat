//
//  ChatListViewModelType.swift
//  DemoChat
//
//  Created by Md Faizul karim on 10/9/24.
//  Copyright (c) 2024 ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation
import Combine

// MARK: ChatListViewModelInput
struct ChatListViewModelInput {
    let viewDidLoad: AnyPublisher<Void, Never>
}

// MARK: ViewModelOutput
struct ChatListViewModelOutput {
    let viewState: AnyPublisher<ChatListViewState, Never>
}

// MARK: ViewState
enum ChatListViewState {
    case viewDidLoad
    case loading(shouldShow: Bool)
}

// MARK: ChatListViewModelType
protocol ChatListViewModelType {
    /// Passing input publishers to get output publishers for sink i.e to observe
    func transform(input: ChatListViewModelInput) -> ChatListViewModelOutput
}
