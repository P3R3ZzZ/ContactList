//
//  NumbersView.swift
//  ContactList
//
//  Created by Sergey Karyakin on 26.12.2023.
//

import SwiftUI

struct NumbersView: View {
    let contactList: [Person]
    
    var body: some View {
        NavigationStack {
            List(contactList) { person in
                Section(person.fullName) {
                    InformationView(person: person)
                }
            }
            .listStyle(.plain)
            .navigationTitle("Contact List")
        }
    }
}

#Preview {
    NumbersView(contactList: Person.getContactList())
}
