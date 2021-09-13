//
//  PersonsListInfoViewController.swift
//  listOfContacts
//
//  Created by Иван Гришин on 10.09.2021.
//

import UIKit

class PersonsListInfoViewController: UITableViewController {

    var secondPerson: [Person]! = []

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 0
//    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        secondPerson.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Contact", for: indexPath)
            
        var content = cell.defaultContentConfiguration()
        let contact = secondPerson[indexPath.row]
            
        content.text = contact.fullName()
            
        cell.contentConfiguration = content

        return cell
    }

}
