//
//  HomeViewController.swift
//  EnglishHelper
//
//  Created by mac on 25.08.2020.
//  Copyright (c) 2020 UniCreo. All rights reserved.
//

import UIKit

final class HomeViewController: UIViewController {
    
    // MARK: IBOutlets
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    // MARK: - Public properties
    
    var presenter: HomePresenting!
    
    // MARK: - Object lifecycle

    override func awakeFromNib() {
        super.awakeFromNib()
        Home.Module().configure(viewController: self)
    }

    // MARK: - View lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

        // TODO: Ask the Presenter to do some work
        presenter.viewDidLoad()
        
        configureCollectionView()
    }
}

// MARK: - View logic

extension HomeViewController: HomeView {
    
    func configureCollectionView() {
        
        collectionView.register(R.nib.dashboardItemCollectionViewCell)
        
        collectionView.isPagingEnabled = true
        
        if let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            layout.scrollDirection = .vertical
        }
    }

}

//MARK: - UICollectionViewDataSource

extension HomeViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return presenter.numberOfItems(in: section)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let item = presenter.item(at: indexPath)
        
        switch item {
            
        case .library(let viewModel):
            
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: R.reuseIdentifier.dashboardItemCollectionViewCell, for: indexPath)!
            
            cell.fill(with: viewModel)
            
            return cell
        }
    }
}

//MARK: - UICollectionViewDelegateFlowLayout

extension HomeViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let width = collectionView.frame.size.width / 2
        let height = collectionView.frame.size.width / 2
        
        return CGSize(width: width, height: height)
    }
}
