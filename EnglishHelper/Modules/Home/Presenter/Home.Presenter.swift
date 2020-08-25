//
//  Home.Presenter.swift
//  EnglishHelper
//
//  Created by mac on 25.08.2020.
//  Copyright (c) 2020 UniCreo. All rights reserved.
//

import UIKit

protocol HomePresenting: AnyObject {

    func viewDidLoad()
    
    func numberOfItems(in section: Int) -> Int
    func item(at indexPath: IndexPath) -> Home.Item.ViewModel
}

extension Home {

    final class Presenter {

        // MARK: - Public properties

        weak var view: HomeView!
        var router: HomeRouting!
        var interactor: HomeInteracting!
    }
}

// MARK: - Presentation logic

extension Home.Presenter: HomePresenting {

    func viewDidLoad() {

        // TODO: Present something in view or call some method on interactor

        // router.navigateToSomewhere()
    }
    
    func numberOfItems(in section: Int) -> Int {
        return interactor.numberOfItems(in: section)
    }
    
    func item(at indexPath: IndexPath) -> Home.Item.ViewModel {
        return interactor.item(at: indexPath).viewModel
    }
}

// MARK: - HomeInteractorOutput

extension Home.Presenter: HomeInteractorOutput {

    
}
