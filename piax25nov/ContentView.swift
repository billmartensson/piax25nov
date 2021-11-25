//
//  ContentView.swift
//  piax25nov
//
//  Created by Bill Martensson on 2021-11-25.
//

import SwiftUI

struct ContentView: View {
    
    @AppStorage("thename") var username = ""
    
    @State var showOther = false
    
    var body: some View {
        VStack {
            Text("Hello, world!")
                .padding()
            
            
            TextField("Username", text: $username)
            
            Button(action: {
                
                UserDefaults.standard.set(username, forKey: "thename")
                
            }) {
                Text("Save")
            }.padding()
            
            Button(action: {
                showOther = true
            }) {
                Text("Open other")
            }
            .padding()
            .sheet(isPresented: $showOther) {
                OtherView()
            }
            
        }
        .padding(.horizontal)
        /*
        .onAppear(perform: {
            
            if let thesavedname = UserDefaults.standard.string(forKey: "thename") {
                username = thesavedname
            }
            
        })
         */
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
