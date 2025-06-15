//
//  PersonViewModel.swift
//  MvvmSwiftUI
//
//  Created by Juan Camilo Mendieta Hernández on 15/06/25.
//

import Foundation

class PersonViewModel: ObservableObject {
    @Published var people: [Person] = []
    
    init() {
        addPeople()
    }
    
    func addPeople() {
        people = peopleData
    }
    
    func shuffleOrder() {
        people.shuffle()
    }
    
    func reverseOrder() {
        people.reverse()
    }
    
    func removeLastPerson() {
        people.removeLast()
    }
    
    func removeFirstPerson() {
        people.removeFirst()
    }
}

let peopleData = [
    Person(name: "Jon Snow", email: "Jon@email.com", phoneNumber: "666-6666"),
    Person(name: "Juan Camilo", email: "Juan@email.com", phoneNumber: "666-8899"),
    Person(name: "Alex Snow", email: "Alex@email.com", phoneNumber: "666-6666"),
    Person(name: "Carlos Snow", email: "Carlos@email.com", phoneNumber: "666-6666"),
    Person(name: "Laura Snow", email: "Laura@email.com", phoneNumber: "666-6666"),
]
