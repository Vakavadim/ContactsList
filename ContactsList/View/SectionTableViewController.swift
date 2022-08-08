//
//  SectionTableViewController.swift
//  ContactsList
//
//  Created by Вадим Гамзаев on 08.08.2022.
//

import UIKit

class SectionTableViewController: UITableViewController {
    
    let persons = Person.getContactList()

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return persons.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        persons[section].fullName
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SectionCell", for: indexPath)
        
        let person = persons[indexPath.section]
        
        var content = cell.defaultContentConfiguration()
        content.text = indexPath.row == 0 ? person.email : person.phoneNumber
        content.image = indexPath.row == 0 ? UIImage(systemName: "phone") : UIImage(systemName: "mail.stack")
        cell.contentConfiguration = content

        return cell
    }
}
