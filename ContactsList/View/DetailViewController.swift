//
//  DetailViewController.swift
//  ContactsList
//
//  Created by Вадим Гамзаев on 08.08.2022.
//

import UIKit

class DetailViewController: UIViewController {
    
    var fullName: String?
    var email: String?
    var phone: String?

    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = fullName ?? ""
        
        emailLabel.text = email ?? ""
        phoneLabel.text = phone ?? ""
    }
}
