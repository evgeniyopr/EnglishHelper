//
//  Home.Interactor.swift
//  EnglishHelper
//
//  Created by mac on 25.08.2020.
//  Copyright (c) 2020 UniCreo. All rights reserved.
//

import Foundation

protocol HomeInteracting: AnyObject {
    
    var entity: Home.Entity { get }
    
    func numberOfItems(in section: Int) -> Int
    func item(at indexPath: IndexPath) -> Home.Item

    
}

protocol HomeInteractorOutput: AnyObject {

    
}

extension Home {

    final class Interactor {

        // MARK: - Public properties

        weak var output: HomeInteractorOutput!

        // MARK: - Private properties

        private let api: HomeAPI
        private(set) var entity: Entity = .initial

        // MARK: - Init

        init(api: HomeAPI = APIClient()) {
            self.api = api
        }
    }
}

// MARK: - Business logic

extension Home.Interactor: HomeInteracting {
    
    typealias Item = Home.Item
    
    func numberOfItems(in section: Int) -> Int {
        return entity.items.count
    }
    
    func item(at indexPath: IndexPath) -> Item {
        return entity.items[indexPath.row]
    }
    
    func indexPath(where predicate: (Item) -> Bool) -> IndexPath? {
        
        guard let index = entity.items.firstIndex(where: predicate) else {
            return nil
        }
        
        return IndexPath(row: index, section: 0)
    }
}
