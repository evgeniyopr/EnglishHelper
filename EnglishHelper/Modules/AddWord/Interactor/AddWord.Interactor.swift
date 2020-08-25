//
//  AddWord.Interactor.swift
//  EnglishHelper
//
//  Created by mac on 25.08.2020.
//  Copyright (c) 2020 UniCreo. All rights reserved.
//

import Foundation

protocol AddWordInteracting: AnyObject {

    
}

protocol AddWordInteractorOutput: AnyObject {

    
}

extension AddWord {

    final class Interactor {

        // MARK: - Public properties

        weak var output: AddWordInteractorOutput!

        // MARK: - Private properties

        private let api: AddWordAPI

        // MARK: - Init

        init(api: AddWordAPI = APIClient()) {
            self.api = api
        }
    }
}

// MARK: - Business logic

extension AddWord.Interactor: AddWordInteracting {

    
}
