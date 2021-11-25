//
//  OtherView.swift
//  piax25nov
//
//  Created by Bill Martensson on 2021-11-25.
//

import SwiftUI

struct OtherView: View {
    
    @AppStorage("thename") var username = ""
    
    var body: some View {
        Text(username)
    }
}

struct OtherView_Previews: PreviewProvider {
    static var previews: some View {
        OtherView()
    }
}
