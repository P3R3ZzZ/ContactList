//
//  InformationView.swift
//  ContactList
//
//  Created by Sergey Karyakin on 26.12.2023.
//

import SwiftUI

struct InformationView: View {
    let person: Person
    
    var body: some View {
        HStack {
            Image(systemName: "phone")
                .foregroundStyle(.blue)
            Text(person.phoneNumber)
        }
        
        HStack {
            Image(systemName: "envelope")
                .foregroundStyle(.blue)
            Text(person.email)
        }
    }
}

#Preview {
    InformationView(person: Person(name: "", surname: "", email: "", phoneNumber: ""))
}
