//
//  BaseCellProtocol.swift
//  SlimTableView
//
//  Created by dang huu duong on 7/7/17.
//  Copyright © 2017 dang huu duong. All rights reserved.
//
import UIKit

/**
 cell protocol for uicollectionview, uitableview
 */
protocol BaseCellProtocol {
    static func getNibName() -> String // return nibname of cell
    static func getNib() -> UINib // return nib of cell
    static func getClassName() -> String
}


/**
 default implement for cell
 */
extension BaseCellProtocol where Self : UIView {
    static func getNibName() -> String {
        return String(describing: self)
    }
    
    static func getNib() -> UINib {
        let mainBundle = Bundle.main
        return UINib.init(nibName: self.getNibName(), bundle: mainBundle)
    }
    static func getClassName() -> String {
        return String(describing: self)
    }
}
