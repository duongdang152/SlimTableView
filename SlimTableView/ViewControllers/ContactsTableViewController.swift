//
//  ContactsTableViewController.swift
//  SlimTableView
//
//  Created by dang huu duong on 7/7/17.
//  Copyright © 2017 dang huu duong. All rights reserved.
//

import UIKit

class ContactsTableViewController: UITableViewController {
    var contactList = [Contact]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Mock data
        for _ in 1...10  {
            self.contactList.append(Contact.Mock())
        }
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contactList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: ContactTableViewCell = self.tableView.on_dequeue(idxPath: indexPath)
        tableView.dequeueReusableCell(withIdentifier: <#T##String#>, for: <#T##IndexPath#>)
        guard contactList.count > indexPath.row else {
            return cell
        }
        cell.contact = contactList[indexPath.row]
        
        return cell
    }
}


extension UITableView {
    func on_register< T : BaseCellProtocol>(type: T.Type)  {
        self.register(T.getNib(), forCellReuseIdentifier: T.getNibName())
        
    }
    
    func on_dequeue< T : BaseCellProtocol>(idxPath : IndexPath) -> T {
        guard let cell = self.dequeueReusableCell(withIdentifier: T.getNibName(), for: idxPath) as? T else {
            fatalError("couldnt dequeue cell with identifier \(T.getNibName())")
        }
        
        return cell
    }
}
