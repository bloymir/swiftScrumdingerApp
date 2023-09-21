//
//  swiftScrumdingerAppApp.swift
//  swiftScrumdingerApp
//
//  Created by nelson tapia on 07-09-23.
//

import SwiftUI

@main
struct swiftScrumdingerAppApp: App {
    
    @State private var scrums = DailyScrum.sampleData
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: $scrums)
        }
    }
}
