//
//  ContentView.swift
//  ContactList
//
//  Created by Sergey Karyakin on 26.12.2023.
//

import SwiftUI

struct ContentView: View {
    private let contactList = Person.getContactList()
    
    var body: some View {
        TabView {
            ContactsView(contactList: contactList)
                .tabItem {
                    Label("Contacts", systemImage: "person.2.fill")
                }
            NumbersView(contactList: contactList)
                .tabItem {
                    Label("Numbers", systemImage: "phone")
                }
        }
    }
}

#Preview {
    ContentView()
}
