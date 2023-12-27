//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Luca Wiehe on 25.12.23.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    // State => this is data source for all children
    @State private var scrums = DailyScrum.sampleData
    
    var body: some Scene {
        WindowGroup {
            // use $scrums to create state as binding
            ScrumsView(scrums: $scrums)
        }
    }
}
