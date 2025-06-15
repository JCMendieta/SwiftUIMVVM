//
//  Person.swift
//  MvvmSwiftUI
//
//  Created by Juan Camilo Mendieta Hernández on 15/06/25.
//

import SwiftUI

struct Person: Identifiable {
    var id = UUID()
    var name: String
    var email: String
    var phoneNumber: String
}

