//
//  DataView.swift
//  bilskade
//
//  Created by mac on 13.08.2020.
//  Copyright © 2020 UniCreo. All rights reserved.
//

import Foundation

protocol DataView: AnyObject {
    associatedtype ViewModelType
    func fill(with viewModel: ViewModelType)
}
