//
//  PersonsListInfoViewController.swift
//  listOfContacts
//
//  Created by Иван Гришин on 10.09.2021.
//

import UIKit

class PersonsListInfoViewController: UITableViewController {

    var secondPerson: [Person]!

    override func viewDidLoad() {
        super.viewDidLoad()
            
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        secondPerson.count
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        secondPerson[section].fullName()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Contact", for: indexPath)
            
        let contact = secondPerson[indexPath.section]
        var content = cell.defaultContentConfiguration()
            
        switch indexPath.row {
        case 0:
            content.text = contact.phoneNumber
            content.image = UIImage(systemName: "phone")
            
        default:
            content.text = contact.email
            content.image = UIImage(systemName: "tray")
        }
        
            
        cell.contentConfiguration = content

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    

}
