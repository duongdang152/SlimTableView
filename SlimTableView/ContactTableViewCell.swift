//
//  ContactTableViewCell.swift
//  SlimTableView
//
//  Created by dang huu duong on 7/7/17.
//  Copyright © 2017 dang huu duong. All rights reserved.
//

import UIKit

class ContactTableViewCell: UITableViewCell, BaseCellProtocol {
    
    @IBOutlet weak var contactAvatarImageView: UIImageView!
    @IBOutlet weak var contactNameLabel: UILabel!
    
    var contact: Contact! {
        didSet {
            
            if let avatar = contact.avatar {
                self.contactAvatarImageView.image = avatar
            }
            self.contactNameLabel.text = contact.name
        }
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}
