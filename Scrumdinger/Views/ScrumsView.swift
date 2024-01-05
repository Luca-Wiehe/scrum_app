//
//  ScrumsView.swift
//  Scrumdinger
//
//  Created by Luca Wiehe on 26.12.23.
//

import SwiftUI


struct ScrumsView: View {
    @Binding var scrums: [DailyScrum]
    
    // use scenePhase to track if ScrumsView is active, inactive or in background
    @Environment(\.scenePhase) private var scenePhase
    
    // track if "New Scrum"-View is opened
    @State private var isPresentingNewScrumView: Bool = false
    
    let saveAction: () -> Void
    
    var body: some View {
        NavigationStack{
            // if we don't have an Identifiable object, we need to `pass id: \.title` as an additional attribute to List
            List($scrums) {
                $scrum in
                NavigationLink(destination: DetailView(scrum: $scrum)){
                    CardView(scrum: scrum)
                }
                .listRowBackground(scrum.theme.mainColor)
            }
            .navigationTitle("Daily Scrums")
            .toolbar {
                Button(action: {
                    isPresentingNewScrumView = true
                }) {
                    Image(systemName: "plus")
                }
                .accessibilityLabel("New Scrum")
            }
        }
        .sheet(isPresented: $isPresentingNewScrumView) {
            NewScrumSheet(scrums: $scrums, isPresentingNewScrumView: $isPresentingNewScrumView)
        }
        // save user data when scene becomes in active (i.e. app is closed)
        .onChange(of: scenePhase) {
            if scenePhase == .inactive { saveAction() }
        }
    }
}


struct ScrumsView_Previews: PreviewProvider {
    static var previews: some View {
        ScrumsView(scrums: .constant(DailyScrum.sampleData), saveAction: {})
    }
}
