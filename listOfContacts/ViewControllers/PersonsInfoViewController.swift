//
//  PersonsInfoViewController.swift
//  listOfContacts
//
//  Created by Иван Гришин on 10.09.2021.
//

import UIKit

class PersonsInfoViewController: UIViewController {
    
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var thirdPerson: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = thirdPerson.fullName()
        phoneLabel.text = "Phone: \(thirdPerson.phoneNumber)"
        emailLabel.text = "Email: \(thirdPerson.email)"
    }
    

}
