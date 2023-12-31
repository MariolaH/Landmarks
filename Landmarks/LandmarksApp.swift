//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Mariola Hullings on 8/21/23.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
