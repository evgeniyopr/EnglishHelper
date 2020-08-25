//
//  Detail.Presenter.swift
//  EnglishHelper
//
//  Created by mac on 25.08.2020.
//  Copyright (c) 2020 UniCreo. All rights reserved.
//

import UIKit

protocol DetailPresenting: AnyObject {

    func viewDidLoad()
}

extension Detail {

    final class Presenter {

        // MARK: - Public properties

        weak var view: DetailView!
        var router: DetailRouting!
        var interactor: DetailInteracting!
    }
}

// MARK: - Presentation logic

extension Detail.Presenter: DetailPresenting {

    func viewDidLoad() {

        // TODO: Present something in view or call some method on interactor

        // router.navigateToSomewhere()
    }
}

// MARK: - DetailInteractorOutput

extension Detail.Presenter: DetailInteractorOutput {

    
}
