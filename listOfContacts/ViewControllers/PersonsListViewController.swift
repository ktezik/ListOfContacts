//
//  PersonsListViewController.swift
//  listOfContacts
//
//  Created by Иван Гришин on 10.09.2021.
//

import UIKit

class PersonsListViewController: UITableViewController {
    
    let person = Person.getPerson()

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 0
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

         

        return cell
    }
    

}
