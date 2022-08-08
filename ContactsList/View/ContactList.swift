//
//  ContactList.swift
//  ContactsList
//
//  Created by Вадим Гамзаев on 08.08.2022.
//

import UIKit

class ContactList: UITableViewController {
    
    let persons = Person.getContactList()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.prefersLargeTitles = true
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return persons.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        var content = cell.defaultContentConfiguration()
        content.text = persons[indexPath.row].fullName
        
        cell.contentConfiguration = content

        return cell
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let indexPath = tableView.indexPathForSelectedRow {
            guard segue.identifier == "ShowDetail" else { return }
            let detailVC = segue.destination as! DetailViewController
            detailVC.fullName = "\(persons[indexPath.row].fullName)"
            detailVC.email = persons[indexPath.row].email
            detailVC.phone = persons[indexPath.row].phoneNumber
            
            }
    }
}
