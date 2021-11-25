//
//  piax25novApp.swift
//  piax25nov
//
//  Created by Bill Martensson on 2021-11-25.
//

import SwiftUI
import Firebase

@main
struct piax25novApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
