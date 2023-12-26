//
//  ContactDetailsView.swift
//  ContactList
//
//  Created by Sergey Karyakin on 26.12.2023.
//

import SwiftUI

struct ContactDetailsView: View {
    let title: String
    let person: Person
    
    var body: some View {
        List() {
            Image(systemName: "person.fill")
                .resizable()
                .frame(width: 100, height: 100)
                .padding(.leading, 100)
            
            InformationView(person: person)
        }
        .navigationTitle(title)
    }
}

#Preview {
    ContactDetailsView(title: "", person: Person(name: "", surname: "", email: "", phoneNumber: ""))
}
