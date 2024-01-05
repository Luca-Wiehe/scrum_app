//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Luca Wiehe on 25.12.23.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    
    
    // make ScrumStore available for all children
    @StateObject private var store = ScrumStore()
    
    var body: some Scene {
        WindowGroup {
            // use $store to create state as binding, i.e. update all related UI elements on change
            ScrumsView(scrums: $store.scrums)
                .task {
                    do {
                        try await store.load()
                    } catch {
                        fatalError(error.localizedDescription)
                    }
                }
        }
    }
}
