//
//  FoodListingViewController.swift
//  DiffableDataSourceExample
//
//  Created by Prateek on 01/02/20.
//  Copyright © 2020 Prateek. All rights reserved.
//

import UIKit

final class FoodListingViewController: UIViewController {

    @IBOutlet weak private var collectionView: UICollectionView!
    let dishes = Dish.dishes

    override func viewDidLoad() {
        super.viewDidLoad()
        configureDataSource()
        performQuery(with: nil)
    }

    func configureDataSource() {
        // TODO: Configure Data Source
    }

    func performQuery(with filter: String?) {
        // TODO: Filter the food listing
    }
}

extension FoodListingViewController: UICollectionViewDelegateFlowLayout {

    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.bounds.width - 15 - 15, height: 67)
    }
}

extension FoodListingViewController: UISearchBarDelegate {

    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        performQuery(with: searchText)
    }
}
