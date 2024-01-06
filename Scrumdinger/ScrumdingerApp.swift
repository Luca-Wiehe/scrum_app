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
    
    // global variable to display errors if necessary
    @State private var errorWrapper: ErrorWrapper?
    
    var body: some Scene {
        WindowGroup {
            // use $store to create state as binding, i.e. update all related UI elements on change
            ScrumsView(scrums: $store.scrums) {
                Task {
                    do {
                        // save data
                        try await store.save(scrums: store.scrums)
                    } catch {
                        // let user know that saving data failed
                        errorWrapper = ErrorWrapper(error: error, guidance: "Try again later.")
                    }
                }
            }
            .task {
                do {
                    // load data
                    try await store.load()
                } catch {
                    // let user know that loading data failed
                    errorWrapper = ErrorWrapper(error: error, guidance: "Scrumdinger will load sample data and continue.")
                }
            }
            .sheet(item: $errorWrapper) {
                store.scrums = DailyScrum.sampleData
            } content: {
                wrapper in
                ErrorView(errorWrapper: wrapper)
            }
        }
    }
}
