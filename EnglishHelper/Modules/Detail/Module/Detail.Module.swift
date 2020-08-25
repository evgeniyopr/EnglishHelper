//
//  Detail.Module.swift
//  EnglishHelper
//
//  Created by mac on 25.08.2020.
//  Copyright (c) 2020 UniCreo. All rights reserved.
//

import UIKit

struct Detail {}

extension Detail {

    struct Module {

        func configure(viewController: DetailViewController) {

            let router = Router()
            router.viewController = viewController

            let presenter = Presenter()
            presenter.view = viewController
            presenter.router = router

            let interactor = Interactor()
            interactor.output = presenter

            presenter.interactor = interactor

            viewController.presenter = presenter
        }
    }
}
