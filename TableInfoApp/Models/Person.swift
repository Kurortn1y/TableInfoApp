//
//  Person.swift
//  TableInfoApp
//
//  Created by Roman on 26.10.23.
//

import Foundation


struct Person {
    
    let name: String
    let surname: String
    let number: String
    let mail: String
    
    static func get(list: [String]) -> [String] {
        list.shuffled()
    }
    
    init(name: String, surname: String, number: String, mail: String) {
        self.name = name
        self.surname = surname
        self.number = number
        self.mail = mail
    }
}

let data = DataStore()

let personsNames = Person.get(list: data.names.shuffled())
let personsSurnames = Person.get(list: data.surnames.shuffled())
let personsMails = Person.get(list: data.mails.shuffled())
let personNumbers = Person.get(list: data.telephoneNumbers.shuffled())

var personsList: [Person] = []

extension Person {
    static func getPersons() -> [Person] {
        for index in 0..<personsNames.count {
            let person = Person(
                name: personsNames[index],
                surname: personsSurnames[index],
                number: personNumbers[index],
                mail: personsMails[index]
            )
            personsList.append(person)
        }
        return personsList
    }
}



