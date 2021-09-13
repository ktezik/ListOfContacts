//
//  PersonsListViewController.swift
//  listOfContacts
//
//  Created by Иван Гришин on 10.09.2021.
//

import UIKit

class PersonsListViewController: UITableViewController {
    
    var firstPerson: [Person]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        tableView.rowHeight = 40
        
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        firstPerson.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Contact", for: indexPath)
        
        var content = cell.defaultContentConfiguration()
        let contact = firstPerson[indexPath.row]
        
        content.text = contact.fullName()
        
        cell.contentConfiguration = content
        return cell
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        guard let prepare = segue.destination as? UITabBarController else { return }
//        guard let viewControllers = prepare.viewControllers else { return }
//        
//        for viewController in viewControllers {
//        if let welcomeVC = viewController as? PersonsListInfoViewController {
//            welcomeVC.secondPerson = person
//            }
//        }
//        
//    }

}
