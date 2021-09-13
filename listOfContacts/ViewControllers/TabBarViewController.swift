//
//  TabBarViewController.swift
//  listOfContacts
//
//  Created by Иван Гришин on 13.09.2021.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
    }
    
    private func setupViewControllers() {
        let persons = Person.getPerson()
        let personsListVC = viewControllers?.first as! PersonsListViewController
        let personsListInfoVC = viewControllers?.last as! PersonsListInfoViewController
        
        personsListVC.firstPerson = persons
        personsListInfoVC.secondPerson = persons
    }

}
