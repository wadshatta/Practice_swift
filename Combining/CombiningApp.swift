//
//  CombiningApp.swift
//  Combining
//
//  Created by MacBook Pro on 02/06/2023.
//

import SwiftUI

@main
struct CombiningApp: App {
    @StateObject private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
