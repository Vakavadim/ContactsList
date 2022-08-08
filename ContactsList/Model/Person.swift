//
//  Person.swift
//  ContactsList
//
//  Created by Вадим Гамзаев on 08.08.2022.
//

import Foundation

struct Person {
    var name: String
    var surname: String
    var email: String
    var phoneNumber: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getContactList() -> [Person] {
        
        var persons: [Person] = []
        
        let names = DataManager.names.shuffled()
        let surnames = DataManager.surnames.shuffled()
        let emails = DataManager.emails.shuffled()
        let phones = DataManager.phones.shuffled()
        
        
        for index in 0..<names.count {
            let person = Person(name: names[index],
                                surname: surnames[index],
                                email: emails[index],
                                phoneNumber: phones[index])
            persons.append(person)
        }
        
        return persons
    }
}
