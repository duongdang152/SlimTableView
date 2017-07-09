//
//  Contact.swift
//  SlimTableView
//
//  Created by dang huu duong on 7/7/17.
//  Copyright © 2017 dang huu duong. All rights reserved.
//

import UIKit

protocol Mock  {
    static func Mock() -> Self
}

final class Contact: NSObject {
    var name: String!
    var avatar: UIImage?
    
    init(name: String, avatar: UIImage?) {
        self.name = name
        self.avatar = avatar
    }
}

extension Contact : Mock {
    static func Mock() -> Contact {
        let arrayNames = ["Duong", "An", "Tuan", "Dat"]
        let arrayImages = [#imageLiteral(resourceName: "chandung"), #imageLiteral(resourceName: "chandung1"), #imageLiteral(resourceName: "chandung2"), #imageLiteral(resourceName: "chandung3")]
        let randomNameNum  = Int.randomInt(max: 3)
        let randomImageNum = Int.randomInt(max: 3)
        let contact = Contact(name: arrayNames[randomNameNum], avatar: arrayImages[randomImageNum])
        
        return contact
    }
}

extension Int {
    static func randomInt(max: Int) -> Int {
        return Int(arc4random_uniform(UInt32(max)))
    }
}
