//
//  ItemStore.swift
//  Homepwner
//
//  Created by Daniel Roberts on 12/04/17.
//  Copyright © 2017 Duro. All rights reserved.
//

import UIKit

class ItemStore {
    var allItems = [Item]()
 
    func createItem() -> Item {
        let newItem = Item()
        allItems.append(newItem)
        return newItem
    }
    
    func removeItem(item: Item) {
        if let index = allItems.index(of: item) {
            allItems.remove(at: index)
        }
    }
    
    func moveItemAtIndex(fromIndex: Int, toIndex: Int) {
        if fromIndex == toIndex {
            return
        }
        let movedItem = allItems[fromIndex]
        allItems.remove(at: fromIndex)
        if toIndex < fromIndex {
            allItems.insert(movedItem, at: toIndex)
        } else {
            allItems.insert(movedItem, at: toIndex-1)
        }
    }
    
}
