//
//  Persons.swift
//  listOfContacts
//
//  Created by Иван Гришин on 10.09.2021.
//

struct Person {
    let name: String
    let surname: String
    let phoneNumber: String
    let email: String
    
    static func getPerson() -> [Person] {
        var persons: [Person] = []
        
        let namesShuffled = names.shuffled()
        let surnamesShuffled = surnames.shuffled()
        let phonesShuffled = phoneNumbers.shuffled()
        let emailsShuffled = emails.shuffled()
        
        let iterationCount = min(namesShuffled.count, surnamesShuffled.count, phonesShuffled.count, emailsShuffled.count)
        
        for a in 1..<iterationCount {
            let person = Person(
                name: names[a],
                surname: surnames[a],
                phoneNumber: phoneNumbers[a],
                email: emails[a]
            )
            
            persons.append(person)
        }
    
        return persons
    }
}

