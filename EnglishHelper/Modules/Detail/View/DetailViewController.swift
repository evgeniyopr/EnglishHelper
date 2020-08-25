//
//  DetailViewController.swift
//  EnglishHelper
//
//  Created by mac on 25.08.2020.
//  Copyright (c) 2020 UniCreo. All rights reserved.
//

import UIKit

final class DetailViewController: UIViewController {

    // MARK: - Public properties

    var presenter: DetailPresenting!

    // MARK: - Object lifecycle

    override func awakeFromNib() {
        super.awakeFromNib()
        Detail.Module().configure(viewController: self)
    }

    // MARK: - View lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

        // TODO: Ask the Presenter to do some work
        presenter.viewDidLoad()
    }
}

// MARK: - View logic

extension DetailViewController: DetailView {

}
