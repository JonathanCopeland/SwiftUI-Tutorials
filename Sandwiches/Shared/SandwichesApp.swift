//
//  SandwichesApp.swift
//  Shared
//
//  Created by Jonathan Copeland on 2020/12/29.
//

import SwiftUI

@main
struct SandwichesApp: App {
    
    @StateObject private var store = SandwichStore()
    
    var body: some Scene {
        WindowGroup {
            ContentView(store: store)
        }
    }
}
