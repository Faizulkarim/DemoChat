//
//  ChatListViewModel.swift
//  DemoChat
//
//  Created by Md Faizul karim on 10/9/24.
//  Copyright (c) 2024 ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation
import UIKit
import Combine

// MARK: ChatListViewModel
final class ChatListViewModel {
    
    // MARK: Private variables
    private var disposeBag: DisposeBag = DisposeBag()
    private let apiManager: OTAPIManager
    private var displayModel: ChatListDisplayModel = ChatListDisplayModel()

    // MARK: Init Functions

    /// Initializes the model
    ///
    /// - Parameters:
    ///   - apiManager: APIManager manager.
    init(apiManager: OTAPIManager) {
        self.apiManager = apiManager
    }

    private func viewModels<T>(from models: [T]) -> [ChatListDisplayModel] {
        return models.map { ChatListDisplayModelBuilder.viewModel(from: $0)}
    }
    
}

// MARK: ChatListViewModelType

/// Get ChatListViewModelType protocol methods
extension ChatListViewModel: ChatListViewModelType {

    /// Passing input publishers to get output publishers for sink i.e to observe
    func transform(input: ChatListViewModelInput) -> ChatListViewModelOutput {
        /// Clear all observer
        disposeBag.cancel()

        // Observe viewDidload event and perform action
        let viewDidLoadPublisher = input.viewDidLoad
            .map({ input -> ChatListViewState in
                return .viewDidLoad
                })
            .eraseToAnyPublisher()

        // If there any service call during view load so call it and
        // return success with response model or just return empty
        // response with success call as below
        return ChatListViewModelOutput.init(viewState: viewDidLoadPublisher)
    }

}
