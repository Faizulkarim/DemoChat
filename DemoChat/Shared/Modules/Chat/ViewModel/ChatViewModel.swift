//
//  ChatViewModel.swift
//  DemoChat
//
//  Created by Md Faizul karim on 11/9/24.
//  Copyright (c) 2024 ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation
import UIKit
import Combine

// MARK: ChatViewModel
final class ChatViewModel {
    
    // MARK: Private variables
    private var disposeBag: DisposeBag = DisposeBag()
    private let apiManager: OTAPIManager
    private var displayModel: ChatDisplayModel = ChatDisplayModel()

    // MARK: Init Functions

    /// Initializes the model
    ///
    /// - Parameters:
    ///   - apiManager: APIManager manager.
    init(apiManager: OTAPIManager) {
        self.apiManager = apiManager
    }

    private func viewModels<T>(from models: [T]) -> [ChatDisplayModel] {
        return models.map { ChatDisplayModelBuilder.viewModel(from: $0)}
    }
    
}

// MARK: ChatViewModelType

/// Get ChatViewModelType protocol methods
extension ChatViewModel: ChatViewModelType {

    /// Passing input publishers to get output publishers for sink i.e to observe
    func transform(input: ChatViewModelInput) -> ChatViewModelOutput {
        /// Clear all observer
        disposeBag.cancel()

        // Observe viewDidload event and perform action
        let viewDidLoadPublisher = input.viewDidLoad
            .map({ input -> ChatViewState in
                return .viewDidLoad
                })
            .eraseToAnyPublisher()

        // If there any service call during view load so call it and
        // return success with response model or just return empty
        // response with success call as below
        return ChatViewModelOutput.init(viewState: viewDidLoadPublisher)
    }

}
