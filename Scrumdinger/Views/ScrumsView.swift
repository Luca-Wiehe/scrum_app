//
//  ScrumsView.swift
//  Scrumdinger
//
//  Created by Luca Wiehe on 26.12.23.
//

import SwiftUI


struct ScrumsView: View {
    let scrums: [DailyScrum]
    
    var body: some View {
        // if we don't have an Identifiable object, we need to `pass id: \.title` as an additional attribute to List
        List(scrums) {
            scrum in
            CardView(scrum: scrum)
                .listRowBackground(scrum.theme.mainColor)
        }
    }
}


struct ScrumsView_Previews: PreviewProvider {
    static var previews: some View {
        ScrumsView(scrums: DailyScrum.sampleData)
    }
}
