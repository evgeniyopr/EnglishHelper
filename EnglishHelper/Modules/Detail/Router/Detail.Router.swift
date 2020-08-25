//
//  Detail.Router.swift
//  EnglishHelper
//
//  Created by mac on 25.08.2020.
//  Copyright (c) 2020 UniCreo. All rights reserved.
//

import UIKit

protocol DetailRouting {

    
}

extension Detail {

    final class Router {

        // MARK: - Public properties

        weak var viewController: DetailViewController!
    }
}

// MARK: - Navigation

extension Detail.Router: DetailRouting {    

}
