//
//  Home.Entity.swift
//  EnglishHelper
//
//  Created by mac on 25.08.2020.
//  Copyright (c) 2020 UniCreo. All rights reserved.
//

import UIKit

extension Home {
    
    struct Entity {
        
        let title: String
        let items: [Item]
        
        static var initial = Entity.init(title: "Home", items: [.library(icon: UIImage(), title: "Library", description: "1 word", backgroundFirstColor: #colorLiteral(red: 0.5568627451, green: 0.462745098, blue: 0.7490196078, alpha: 1), backgroundSecondColor: #colorLiteral(red: 0.5019607843, green: 0.4078431373, blue: 0.7019607843, alpha: 1)),
                                                                .library(icon: UIImage(), title: "Library", description: "1 word", backgroundFirstColor: #colorLiteral(red: 0.5568627451, green: 0.462745098, blue: 0.7490196078, alpha: 1), backgroundSecondColor: #colorLiteral(red: 0.5019607843, green: 0.4078431373, blue: 0.7019607843, alpha: 1)),
                                                                .library(icon: UIImage(), title: "Library", description: "1 word", backgroundFirstColor: #colorLiteral(red: 0.5568627451, green: 0.462745098, blue: 0.7490196078, alpha: 1), backgroundSecondColor: #colorLiteral(red: 0.5019607843, green: 0.4078431373, blue: 0.7019607843, alpha: 1))])
    }
    
    //MARK: - Item
    
    enum Item {
        
        case library(icon: UIImage, title: String, description: String, backgroundFirstColor: UIColor, backgroundSecondColor: UIColor)
        
        var viewModel: ViewModel {
            
            switch self {
                
            case .library(let icon, let title, let description, let backgroundFirstColor, let backgroundSecondColor):
                return .library(viewModel: .init(icon: icon, title: title, description: description, backgroundFirstColor: backgroundFirstColor, backgroundSecondColor: backgroundSecondColor))
            }
        }
    }
    
}

extension Home.Item {
    
    enum ViewModel {
        
        case library(viewModel: DashboardItemCollectionViewCell.ViewModel)
    }
}
