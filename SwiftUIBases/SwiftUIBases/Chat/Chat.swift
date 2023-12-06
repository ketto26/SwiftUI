//
//  Chat.swift
//  SwiftUIBases
//
//  Created by Keto Nioradze on 07.12.23.
//

import SwiftUI

struct ChatPersonModel {
    let name: String
    let messageText: String
    let messagingTime: String
}


struct ChatView: View {
  
    @State var persons = [
        ChatPersonModel(name: "Francisco Miles", messageText: "I went there yesterday", messagingTime: "18:14"),
        ChatPersonModel(name: "Francisco Miles", messageText: "I went there yesterday", messagingTime: "18:14"),
        ChatPersonModel(name: "Francisco Miles", messageText: "I went there yesterday", messagingTime: "18:14"),
        ChatPersonModel(name: "Francisco Miles", messageText: "I went there yesterday", messagingTime: "18:14"),
        ChatPersonModel(name: "Francisco Miles", messageText: "I went there yesterday", messagingTime: "18:14"),
        ChatPersonModel(name: "Francisco Miles", messageText: "I went there yesterday", messagingTime: "18:14"),
        ChatPersonModel(name: "Francisco Miles", messageText: "I went there yesterday", messagingTime: "18:14"),
        ChatPersonModel(name: "Francisco Miles", messageText: "I went there yesterday", messagingTime: "18:14"),
        ChatPersonModel(name: "Francisco Miles", messageText: "I went there yesterday", messagingTime: "18:14"),
        ChatPersonModel(name: "Francisco Miles", messageText: "I went there yesterday", messagingTime: "18:14")
    ]

    // ვიცი ეს რომ არ უნდა მექნა 👻 თვალი გავახარე უბრალოდ
    @State var personsSecondRow = [
        ChatPersonModel(name: "Francisco Miles", messageText: "I went there yesterday", messagingTime: "18:14"),
        ChatPersonModel(name: "Francisco Miles", messageText: "I went there yesterday", messagingTime: "18:14"),
        ChatPersonModel(name: "Francisco Miles", messageText: "I went there yesterday", messagingTime: "18:14"),
        ChatPersonModel(name: "Francisco Miles", messageText: "I went there yesterday", messagingTime: "18:14"),
        ChatPersonModel(name: "Francisco Miles", messageText: "I went there yesterday", messagingTime: "18:14"),
        ChatPersonModel(name: "Francisco Miles", messageText: "I went there yesterday", messagingTime: "18:14"),
        ChatPersonModel(name: "Francisco Miles", messageText: "I went there yesterday", messagingTime: "18:14"),
        ChatPersonModel(name: "Francisco Miles", messageText: "I went there yesterday", messagingTime: "18:14"),
        ChatPersonModel(name: "Francisco Miles", messageText: "I went there yesterday", messagingTime: "18:14"),
        ChatPersonModel(name: "Francisco Miles", messageText: "I went there yesterday", messagingTime: "18:14")
    ]
    
    @State var temporaryPersonsData = []
    
    var body: some View {
        
        NavigationView {
            
            VStack{
                
                if persons.isEmpty {
                    
                    Text("Chat is empty!")
                    
                    Button(action: {
                        
                        persons = personsSecondRow
                        
                        print("cleared")
                    }, label: {
                        
                        Text("Restore Chat")
                    })
                    
                    .frame(width: 221, height: 45, alignment: .center)
                    .background(Color(red: 0.06, green: 0.09, blue: 0.39))
                    .cornerRadius(6)
                    .foregroundColor(.white)
                    
                } else {
                    ForEach(persons.indices) { index in
                        
                        HStack(spacing: 20){
                            
                            Image("\(persons[index].name)")
                            
                            VStack(alignment: .leading){
                                
                                HStack{
                                    
                                    Text("\(persons[index].name)")
                                    
                                    Spacer()
                                    
                                    Text("\(persons[index].messagingTime)")
                                }
                                
                                Text("\(persons[index].messageText)")
                            }
                        }
                        .frame(width: 345, height: 70)
                    }
       
                    Button(action: {
                        
                        persons = []
                        
                        print("cleared")
                    }, label: {
                        
                        Text("Clear Chat")
                    })
                    .frame(width: 221, height: 55, alignment: .center)
                    .background(Color(red: 0.06, green: 0.09, blue: 0.39))
                    .cornerRadius(6)
                    .foregroundColor(.white)
                }
            }
 
            .padding(.horizontal, 24)
            .navigationTitle("Chat")
            .navigationBarTitleDisplayMode(.inline)
        }
        .colorScheme(.dark)
    }
}


#Preview {
    ChatView()
}
