//
//  Person.swift
//  ContactList
//
//  Created by Irina Kopchenova on 19.02.2020.
//  Copyright © 2020 Mikhail Scherbina. All rights reserved.
//

struct Person {
    var firstName: String
    var lastName: String
    var phone: String
    var email: String
    var fullName: String {
        return "\(firstName) \(lastName)"
    }
}
extension Person {
    static func contacts() -> [Person] {
        var persons = [Person]()
        let fNames = ["Mikle",
                      "Alexander",
                      "Ilya",
                      "Victor",
                      "Sergey",
                      "Petr",
                      "Alexey",
                      "Maxim",
                      "Andrey",
                      "Savely"]
        let sNames = ["Ivanov",
                      "Petrov",
                      "Sidorov",
                      "Putin",
                      "Mishustin",
                      "Greph",
                      "Medvedev",
                      "Peskov",
                      "Shoigu",
                      "Gornyh",
                      "Samuelson"]
        let phones = ["+79261234567",
                      "+79161112233",
                      "+79032223344",
                      "+79857777777",
                      "+79298007000",
                      "+74959251190",
                      "+74956733333",
                      "+74997180203",
                      "+88007211415",
                      "+79026677891"]
        let emails = ["hz@mail.ru",
                      "bla@aha.com",
                      "hjkhkjh@khlkhl.hg",
                      "007@gmail.com",
                      "serega@bk.ru",
                      "snokers@mail.ru",
                      "ipad@icloud.com",
                      "support@site.com",
                      "postmaster@web.ru",
                      "info@yahoo.com"]
        
        let shuffleFNames = fNames.shuffled()
        let shuffleSNames = sNames.shuffled()
        let shufflePhones = phones.shuffled()
        let shuffleEmails = emails.shuffled()
        
        let maxIndex = min(fNames.count, sNames.count, phones.count, emails.count) - 1
        
        for i in 0...maxIndex {
            persons.append(Person(firstName: shuffleFNames[i],
                                  lastName: shuffleSNames[i],
                                  phone: shufflePhones[i],
                                  email: shuffleEmails[i]))
        }
        
        return persons
    }
}
