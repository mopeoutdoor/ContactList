//
//  DetailsViewController.swift
//  ContactList
//
//  Created by Irina Kopchenova on 19.02.2020.
//  Copyright © 2020 Mikhail Scherbina. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
    
    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    
    var contact: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        fullNameLabel.text = contact.fullName
        emailLabel.text = contact.email
        phoneLabel.text = contact.phone
        
    }

}
