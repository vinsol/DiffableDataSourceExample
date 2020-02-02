//
//  DishCollectionViewCell.swift
//  DiffableDataSourceExample
//
//  Created by Prateek on 02/02/20.
//  Copyright © 2020 Prateek. All rights reserved.
//

import UIKit

final class DishCollectionViewCell: UICollectionViewCell {

    static let identifier = "dishCell"

    @IBOutlet weak private var bgView: UIView!
    @IBOutlet weak private var nameLabel: UILabel!
    @IBOutlet weak private var countryLabel: UILabel!

    func setup(using dish: Dish) {
        bgView.layer.borderColor = UIColor.gray.cgColor
        bgView.layer.borderWidth = 1
        bgView.layer.cornerRadius = 5
        nameLabel.text = dish.name
        countryLabel.text = dish.country ?? "Globally"
    }
}
