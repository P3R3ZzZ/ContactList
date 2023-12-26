//
//  ContactListView.swift
//  ContactList
//
//  Created by Sergey Karyakin on 26.12.2023.
//

import SwiftUI

struct ContactsView: View {
    let contactList: [Person]
    
    var body: some View {
        NavigationStack {
            List(contactList) { person in
                NavigationLink {
                    ContactDetailsView(title: person.fullName, person: person)
                } label: {
                    Text(person.fullName)
                }
            }
            .listStyle(.plain)
            .navigationTitle("Contact List")
        }
    }
}

#Preview {
    ContactsView(contactList: Person.getContactList())
}
