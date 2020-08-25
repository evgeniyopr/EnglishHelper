//
//  Detail.Interactor.swift
//  EnglishHelper
//
//  Created by mac on 25.08.2020.
//  Copyright (c) 2020 UniCreo. All rights reserved.
//

import Foundation

protocol DetailInteracting: AnyObject {

    
}

protocol DetailInteractorOutput: AnyObject {

    
}

extension Detail {

    final class Interactor {

        // MARK: - Public properties

        weak var output: DetailInteractorOutput!

        // MARK: - Private properties

        private let api: DetailAPI

        // MARK: - Init

        init(api: DetailAPI = APIClient()) {
            self.api = api
        }
    }
}

// MARK: - Business logic

extension Detail.Interactor: DetailInteracting {

    
}
