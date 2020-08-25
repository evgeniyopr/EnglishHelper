//
//  AddWordViewController.swift
//  EnglishHelper
//
//  Created by mac on 25.08.2020.
//  Copyright (c) 2020 UniCreo. All rights reserved.
//

import UIKit

final class AddWordViewController: UIViewController {

    // MARK: - Public properties

    var presenter: AddWordPresenting!

    // MARK: - Object lifecycle

    override func awakeFromNib() {
        super.awakeFromNib()
        AddWord.Module().configure(viewController: self)
    }

    // MARK: - View lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

        // TODO: Ask the Presenter to do some work
        presenter.viewDidLoad()
    }
}

// MARK: - View logic

extension AddWordViewController: AddWordView {

}
