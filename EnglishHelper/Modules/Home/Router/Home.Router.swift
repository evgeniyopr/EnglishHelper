//
//  Home.Router.swift
//  EnglishHelper
//
//  Created by mac on 25.08.2020.
//  Copyright (c) 2020 UniCreo. All rights reserved.
//

import UIKit

protocol HomeRouting {

    
}

extension Home {

    final class Router {

        // MARK: - Public properties

        weak var viewController: HomeViewController!
    }
}

// MARK: - Navigation

extension Home.Router: HomeRouting {    

}
