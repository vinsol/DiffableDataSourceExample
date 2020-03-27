//
//  CollectionReusableHeaderView.swift
//  DiffableDataSourceExample
//
//  Created by Prateek on 10/02/20.
//  Copyright © 2020 Prateek. All rights reserved.
//

import UIKit

final class CollectionReusableHeaderView: UICollectionReusableView {

    static let identifier = "collectionReusableHeaderView"
    @IBOutlet weak private(set) var titleLabel: UILabel!
}
