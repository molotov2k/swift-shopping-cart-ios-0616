//
//  Cart.swift
//  swift-shopping-cart
//
//  Created by Max Tkach on 7/13/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation


class Cart {
    
    var items: [Item] = []
    
    
    func totalPriceInCents() -> Int {
        return items.reduce(0, combine: {$0.0 + $0.1.priceInCents})
    }
    
    
    func addItem(item: Item) {
        items.append(item)
    }
    
    
    func removeItem(item: Item) {
        items = items.filter({$0 != item})
    }
    
    
    func itemsWithName(name: String) -> [Item] {
        return items.filter({ $0.name == name })
    }
    
    
    func itemsWithMinimumPriceInCents(minPrice: Int) -> [Item] {
        return items.filter({ $0.priceInCents >= minPrice })
    }
    
    
    func itemsWithMaximumPriceInCents(maxPrice: Int) -> [Item] {
        return items.filter({ $0.priceInCents <= maxPrice })
    }
    
}