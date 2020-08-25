//
//  AddWord.Router.swift
//  EnglishHelper
//
//  Created by mac on 25.08.2020.
//  Copyright (c) 2020 UniCreo. All rights reserved.
//

import UIKit

protocol AddWordRouting {

    
}

extension AddWord {

    final class Router {

        // MARK: - Public properties

        weak var viewController: AddWordViewController!
    }
}

// MARK: - Navigation

extension AddWord.Router: AddWordRouting {    

}
