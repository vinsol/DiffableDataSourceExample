//
//  Dish.swift
//  DiffableDataSourceExample
//
//  Created by Prateek on 02/02/20.
//  Copyright © 2020 Prateek. All rights reserved.
//

import Foundation

struct Dish: Hashable {
    let name: String
    let country: String?
    let isVeg: Bool = Bool.random()
}

extension Dish {

    static let dishes = [
        Dish(name: "Massaman curry", country: "Thailand"),
        Dish(name: "Neapolitan pizza", country: "Italy"),
        Dish(name: "Chocolate", country: "Mexico"),
        Dish(name: "Sushi", country: "Japan"),
        Dish(name: "Peking duck", country: "China"),
        Dish(name: "Hamburger", country: "Germany"),
        Dish(name: "Penang assam laksa", country: "Malaysia"),
        Dish(name: "Tom yum goong", country: "Thailand"),
        Dish(name: "Ice cream", country: "Japan"),
        Dish(name: "Chicken muamba", country: "Gabon"),
        Dish(name: "Rendang", country: "Indonesia"),
        Dish(name: "Piri-piri chicken", country: "Mozambique"),
        Dish(name: "Corn on the cob", country: nil),
        Dish(name: "Donuts", country: "United States"),
        Dish(name: "Pierogi", country: "Poland"),
        Dish(name: "Pastel de nata", country: "Portugal"),
        Dish(name: "Lobster", country: nil),
        Dish(name: "Shish kebab", country: "India"),
        Dish(name: "Bunny chow", country: "South Africa"),
        Dish(name: "Arepas", country: "Venezuela"),
        Dish(name: "Croissant", country: "France"),
        Dish(name: "Poke", country: "United States"),
        Dish(name: "Lasagna", country: "Italy"),
        Dish(name: "Champ", country: "Ireland"),
        Dish(name: "Butter garlic crab", country: "India"),
        Dish(name: "Fajitas", country: "Mexico"),
        Dish(name: "Lechón", country: "Philippines"),
        Dish(name: "Pho", country: "Vietnam"),
        Dish(name: "Ohmi-gyu beef steak", country: "Japan"),
        Dish(name: "Goi cuon (summer roll)", country: "Vietnam"),
        Dish(name: "Parma ham", country: "Italy"),
        Dish(name: "Ankimo", country: "Japan"),
        Dish(name: "Fish 'n' chips", country: "United Kingdom"),
        Dish(name: "Maple syrup", country: "Canada"),
        Dish(name: "Chili crab", country: "Singapore"),
        Dish(name: "Hummus", country: "Middle East"),
        Dish(name: "Chicken parm", country: "Australia"),
        Dish(name: "French toast", country: "Hong Kong"),
        Dish(name: "Marzipan", country: "Germany"),
        Dish(name: "Stinky tofu", country: "Southeast Asia"),
        Dish(name: "Buttered toast with Marmite", country: "United Kingdom"),
        Dish(name: "Tacos", country: "Mexico"),
        Dish(name: "Poutine", country: "Canada"),
        Dish(name: "Chicken rice", country: "Singapore"),
        Dish(name: "Som tam", country: "Thailand"),
        Dish(name: "Seafood paella", country: "Spain"),
        Dish(name: "Potato chips", country: "United Kingdom"),
        Dish(name: "Masala dosa", country: "India"),
        Dish(name: "Buttered popcorn", country: "United States")
    ]
}
