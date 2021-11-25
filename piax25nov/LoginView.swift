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
    
    @State var showThePassword = false
    
    var body: some View {
        ScrollView {
            VStack {
                
                Text("LOGIN")

                Spacer()

                Group {
                    TextField("Email", text: $emailtextfield)
                        .keyboardType(.emailAddress)
                        .disableAutocorrection(true)
                        .padding()

                    TextField("Email", text: $emailtextfield)
                        .keyboardType(.emailAddress)
                        .disableAutocorrection(true)
                        .padding()

                    
                    TextField("Email", text: $emailtextfield)
                        .keyboardType(.emailAddress)
                        .disableAutocorrection(true)
                        .padding()

                    TextField("Email", text: $emailtextfield)
                        .keyboardType(.emailAddress)
                        .disableAutocorrection(true)
                        .padding()

                    TextField("Email", text: $emailtextfield)
                        .keyboardType(.emailAddress)
                        .disableAutocorrection(true)
                        .padding()

                    TextField("Email", text: $emailtextfield)
                        .keyboardType(.emailAddress)
                        .disableAutocorrection(true)
                        .padding()
                }
                
                

                
                TextField("Email", text: $emailtextfield)
                    .keyboardType(.emailAddress)
                    .disableAutocorrection(true)
                    .padding()
                
                if(showThePassword)
                {
                    TextField("Password", text: $passwordtextfield)
                } else {
                    SecureField("Password", text: $passwordtextfield)
                }
                
                
                
                Button(action: {
                    showThePassword.toggle()
                }) {
                    Text("Show password")
                }
                
                
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

                
                Text("Längst ner")
                
            }.padding()
        }
        
        
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
