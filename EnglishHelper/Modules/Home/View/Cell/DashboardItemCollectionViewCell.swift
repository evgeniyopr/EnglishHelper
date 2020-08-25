//
//  LibraryCollectionViewCell.swift
//  EnglishHelper
//
//  Created by mac on 25.08.2020.
//  Copyright © 2020 UniCreo. All rights reserved.
//

import UIKit

class DashboardItemCollectionViewCell: UICollectionViewCell {
    
    // MARK: IBOutlets
    
    @IBOutlet weak var innerView: UIView!
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    // MARK: ViewModel
    
    struct ViewModel {
        
        let icon: UIImage
        let title: String
        let description: String
        let backgroundFirstColor: UIColor
        let backgroundSecondColor: UIColor
        
        static var initial = ViewModel(icon: UIImage(), title: "", description: "", backgroundFirstColor: UIColor(), backgroundSecondColor: UIColor())
    }
    
    // MARK: - Life Cycle
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        fill(with: .initial)
        
    }
}

// MARK: - DataView

extension DashboardItemCollectionViewCell: DataView {
    
    typealias ViewModelType = ViewModel
    
    func fill(with viewModel: ViewModelType) {
        
        self.iconImageView.image = viewModel.icon
        self.titleLabel.text = viewModel.title
        self.descriptionLabel.text = viewModel.description
        
        gradient(to: innerView, with: viewModel.backgroundFirstColor, viewModel.backgroundSecondColor)
    }
}

// MARK: - DataView

private extension DashboardItemCollectionViewCell {

    
    func gradient(to view: UIView, with firstColor: UIColor, _ secondColor: UIColor) {
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [firstColor.cgColor, secondColor.cgColor]
        
        view.layer.insertSublayer(gradientLayer, at: 0)
        
        view.layer.cornerRadius = 13
        view.layer.masksToBounds = true
    }
}
