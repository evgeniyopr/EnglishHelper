//
//  AddWord.Presenter.swift
//  EnglishHelper
//
//  Created by mac on 25.08.2020.
//  Copyright (c) 2020 UniCreo. All rights reserved.
//

import UIKit

protocol AddWordPresenting: AnyObject {

    func viewDidLoad()
}

extension AddWord {

    final class Presenter {

        // MARK: - Public properties

        weak var view: AddWordView!
        var router: AddWordRouting!
        var interactor: AddWordInteracting!
    }
}

// MARK: - Presentation logic

extension AddWord.Presenter: AddWordPresenting {

    func viewDidLoad() {

        // TODO: Present something in view or call some method on interactor

        // router.navigateToSomewhere()
    }
}

// MARK: - AddWordInteractorOutput

extension AddWord.Presenter: AddWordInteractorOutput {

    
}
