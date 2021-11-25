//
//  LoginView.swift
//  piax25nov
//
//  Created by Bill Martensson on 2021-11-25.
//

import SwiftUI
import Firebase

struct LoginView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    @State var emailtextfield = ""
    @State var passwordtextfield = ""
    
    
    var body: some View {
        VStack {
            Text("LOGIN")
            TextField("Email", text: $emailtextfield)
            
            TextField("Password", text: $passwordtextfield)
            
            Button(action: {
                letsRegister()
            }) {
                Text("Register")
            }.padding()
            
            Button(action: {
                letsLogin()
            }) {
                Text("Login")
            }.padding()

            
        }.padding()
    }
    
    func letsRegister()
    {
        Auth.auth().createUser(withEmail: emailtextfield, password: passwordtextfield) { authResult, error in
          if(error == nil)
            {
              // INGET FEL. STÄNG
              presentationMode.wrappedValue.dismiss()
          } else {
              // FEL. VISA FELMEDDELANDE
          }
        }
    }
    
    func letsLogin()
    {
        Auth.auth().signIn(withEmail: emailtextfield, password: passwordtextfield) { authResult, error in
            if(error == nil)
              {
                // INGET FEL. STÄNG
                presentationMode.wrappedValue.dismiss()
            } else {
                // FEL. VISA FELMEDDELANDE
            }
        }
    }
    
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
