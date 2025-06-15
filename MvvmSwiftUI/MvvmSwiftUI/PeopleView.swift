//
//  ContentView.swift
//  MvvmSwiftUI
//
//  Created by Juan Camilo Mendieta Hernández on 15/06/25.
//

import SwiftUI

struct PeopleView: View {
    @ObservedObject var viewModel = PersonViewModel()
    
    var body: some View {
        ZStack {
            ScrollView {
                ForEach(viewModel.people) { person in
                    HStack {
                        Text(person.name)
                            .font(.title)
                            .fontWeight(.bold)
                        Spacer()
                        
                        VStack(alignment: .trailing) {
                            Text(person.phoneNumber)
                            Text(person.email)
                        }
                    }
                    .padding(12)
                }
            }
            
            Menu("Menu".uppercased()) {
                Button("Reverse", action: { viewModel.reverseOrder() })
                Button("Shuffle", action: { viewModel.shuffleOrder() })
                Button("Remove Last", action: { viewModel.removeLastPerson() })
                Button("Remove First", action: { viewModel.removeFirstPerson() })
            }
        }
    }
}

#Preview {
    PeopleView()
}
