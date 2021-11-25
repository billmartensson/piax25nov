//
//  AddOnTopView.swift
//  piax25nov
//
//  Created by Bill Martensson on 2021-11-25.
//

import SwiftUI

struct AddOnTopView: View {
    
    @State var isError = false
    
    var body: some View {
        ZStack {
            VStack {
                Text("Första texten")
                    .font(.title)
                
                
                
                Button(action: {
                    isError = true
                }) {
                    Text("Skicka in")
                }
                
            }
            .background(.gray)
            
            if(isError)
            {
                VStack {
                    Text("Nu blev det fel")
                        .font(.title)
                        .foregroundColor(Color.white)
                }
                .frame(width: 300.0, height: 200.0)
                .background(.red)
                .opacity(0.5)
            }
            
        }
    }
}

struct AddOnTopView_Previews: PreviewProvider {
    static var previews: some View {
        AddOnTopView()
    }
}
