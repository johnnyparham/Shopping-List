//
//  Item.swift
//  Shopping List
//
//  Created by Johnny Parham on 5/10/16.
//  Copyright © 2016 Johnny Parham. All rights reserved.
//

import UIKit

class Item: NSObject, NSCoding {
    
    var uuid: String = NSUUID().UUIDString
    var name: String = ""
    var price: Float = 0.0
    var inShoppingList = false
    
    init(name: String, price: Float) {
        super.init()
        self.name = name
        self.price = price
    }
    
    func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encodeObject(uuid, forKey: "uuid")
        aCoder.encodeObject(name, forKey: "name")
        aCoder.encodeFloat(price, forKey: "price")
        aCoder.encodeBool(inShoppingList, forKey: "inShoppingList")
    }
    
    required init?(coder decoder: NSCoder) {
        super.init()
        
        if let archivedUuid = decoder.decodeObjectForKey("uuid") as? String {
            uuid = archivedUuid
        }
        
        if let archivedName = decoder.decodeObjectForKey("name") as? String {
            name = archivedName
        }
        
        price = decoder.decodeFloatForKey("price")
        inShoppingList = decoder.decodeBoolForKey("inShoppingList")
    }

}



