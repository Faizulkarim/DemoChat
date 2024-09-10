//
//  LoginViewModelType.swift
//  DemoChat
//
//  Created by Md Faizul karim on 10/9/24.
//  Copyright (c) 2024 ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation
import Combine

// MARK: LoginViewModelInput
struct LoginViewModelInput {
    let viewDidLoad: AnyPublisher<Void, Never>
}

// MARK: ViewModelOutput
struct LoginViewModelOutput {
    let viewState: AnyPublisher<LoginViewState, Never>
}

// MARK: ViewState
enum LoginViewState {
    case viewDidLoad
    case loading(shouldShow: Bool)
}

// MARK: LoginViewModelType
protocol LoginViewModelType {
    /// Passing input publishers to get output publishers for sink i.e to observe
    func transform(input: LoginViewModelInput) -> LoginViewModelOutput
}
