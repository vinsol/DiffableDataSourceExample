//
//  FoodListingViewController.swift
//  DiffableDataSourceExample
//
//  Created by Prateek on 01/02/20.
//  Copyright © 2020 Prateek. All rights reserved.
//

import UIKit

final class FoodListingViewController: UIViewController {

    private enum Section {
        case veg
        case nonVeg
    }

    private var dataSource: UICollectionViewDiffableDataSource<Section, Dish>!
    @IBOutlet weak private var collectionView: UICollectionView!
    let dishes = Dish.dishes

    override func viewDidLoad() {
        super.viewDidLoad()
        configureDataSource()
        performQuery(with: nil)
    }
}

extension FoodListingViewController {

    func configureDataSource() {
        dataSource = UICollectionViewDiffableDataSource(collectionView: collectionView) {
                (collectionView: UICollectionView, indexPath: IndexPath,
                dish: Dish) -> UICollectionViewCell? in
            guard let cell = collectionView.dequeueReusableCell(
                withReuseIdentifier: DishCollectionViewCell.identifier, for: indexPath) as? DishCollectionViewCell
            else { fatalError("Cannot create new cell") }
            cell.setup(using: dish)
            return cell
        }
        dataSource.supplementaryViewProvider = { (collectionView: UICollectionView, kind: String, indexPath: IndexPath) -> UICollectionReusableView? in
            guard kind == UICollectionView.elementKindSectionHeader  else { return nil }
            let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind,
                                                                             withReuseIdentifier: CollectionReusableHeaderView.identifier,
                                                                             for: indexPath) as? CollectionReusableHeaderView
            headerView?.titleLabel.text = (indexPath.section == 1) ? "NON-VEG" : "VEG"
            return headerView
        }
    }

    func performQuery(with filter: String?) {
        var dishes = self.dishes
        if let filter = filter, !filter.isEmpty {
            dishes = self.dishes.filter({ $0.name.contains(filter) }).sorted { $0.name < $1.name }
        }
        var snapshot = NSDiffableDataSourceSnapshot<Section, Dish>()
        let vegDishes = dishes.filter({ $0.isVeg })
        if !vegDishes.isEmpty {
            snapshot.appendSections([.veg])
            snapshot.appendItems(vegDishes, toSection: .veg)
        }
        let nonVegDishes = dishes.filter({ !$0.isVeg })
        if !nonVegDishes.isEmpty {
            snapshot.appendSections([.nonVeg])
            snapshot.appendItems(nonVegDishes, toSection: .nonVeg)
        }
        dataSource.apply(snapshot, animatingDifferences: true)
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
