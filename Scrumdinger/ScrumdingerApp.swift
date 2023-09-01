//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Fabio Salata on 18/04/23.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    @State private var scrums = DailyScrum.sampleData

    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: $scrums)
        }
    }
}
