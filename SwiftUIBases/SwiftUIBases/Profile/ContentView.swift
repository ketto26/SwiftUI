//
//  ContentView.swift
//  SwiftUIBases
//
//  Created by Keto Nioradze on 06.12.23.
//

import SwiftUI

struct ContentView: View {
    @State var personName: String = ""
    @State var personEmail: String = ""
    @State var personPassword: String = ""
    @State var birthDate = Date.now
    @State var personCountry: String = ""
    
    var body: some View {

        NavigationView {
            
            VStack(alignment: .center, spacing: 25) {
                
                Image("mikasa")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 195, height: 195)
                    .clipShape(Circle())
                
                VStack(alignment: .leading, spacing: 11){
                    
                    Text("Name")
                        .font(.title2 .weight(.bold))
                    
                    TextField("Mikasa Ackerman", text: $personName)
                        .textFieldStyle(.roundedBorder)
                }
            
                VStack(alignment: .leading, spacing: 11){
                    
                    Text("Email")
                        .font(.title2 .weight(.bold))
                    
                    TextField("mikasa@gmail.com", text: $personEmail)
                        .textFieldStyle(.roundedBorder)
                }
               
                
                VStack(alignment: .leading, spacing: 11){
                    
                    Text("Password")
                        .font(.title2 .weight(.bold))
                    
                    TextField("************", text: $personPassword)
                        .textFieldStyle(.roundedBorder)
                }
                
                VStack(alignment: .leading, spacing: 11){
                    
                    Text("Date of Birth")
                        .font(.title2 .weight(.bold))
                    
                    // მარცხნივ ვერ გამოვწიე 🙁
                    DatePicker(selection: $birthDate, in: ...Date.now, displayedComponents: .date) {
                    }
                }
                
                VStack(alignment: .leading, spacing: 11){
                    
                    Text("Country/Region")
                        .font(.title2 .weight(.bold))
                    
                    TextField("Georgia", text: $personCountry)
                        .textFieldStyle(.roundedBorder)
                }
                
                Button(action: {
                    print("Saved")
                }, label: {
                    Text("Save changes")
                    
                })
                .frame(width: 221, height: 45, alignment: .center)
                .background(Color(red: 0.06, green: 0.09, blue: 0.39))
                .cornerRadius(6)
                .foregroundColor(.white)
                
            }
            .padding(.horizontal, 24)
            .navigationTitle("Edit Profile")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(
                leading: Image(systemName: "chevron.backward")
            )  
        }
    }
}

#Preview {
    ContentView()
}
