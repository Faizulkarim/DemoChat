//
//  LoginViewModel.swift
//  DemoChat
//
//  Created by Md Faizul karim on 10/9/24.
//  Copyright (c) 2024 ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation
import UIKit
import Combine

// MARK: LoginViewModel
final class LoginViewModel {
    
    // MARK: Private variables
    private var disposeBag: DisposeBag = DisposeBag()
    private let apiManager: OTAPIManager
    private var displayModel: LoginDisplayModel = LoginDisplayModel()

    // MARK: Init Functions

    /// Initializes the model
    ///
    /// - Parameters:
    ///   - apiManager: APIManager manager.
    init(apiManager: OTAPIManager) {
        self.apiManager = apiManager
    }

    private func viewModels<T>(from models: [T]) -> [LoginDisplayModel] {
        return models.map { LoginDisplayModelBuilder.viewModel(from: $0)}
    }
    
}

// MARK: LoginViewModelType

/// Get LoginViewModelType protocol methods
extension LoginViewModel: LoginViewModelType {

    /// Passing input publishers to get output publishers for sink i.e to observe
    func transform(input: LoginViewModelInput) -> LoginViewModelOutput {
        /// Clear all observer
        disposeBag.cancel()

        // Observe viewDidload event and perform action
        let viewDidLoadPublisher = input.viewDidLoad
            .map({ input -> LoginViewState in
                return .viewDidLoad
                })
            .eraseToAnyPublisher()

        // If there any service call during view load so call it and
        // return success with response model or just return empty
        // response with success call as below
        return LoginViewModelOutput.init(viewState: viewDidLoadPublisher)
    }

}
