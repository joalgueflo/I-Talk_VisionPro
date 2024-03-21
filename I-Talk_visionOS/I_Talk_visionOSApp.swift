//
//  I_Talk_visionOSApp.swift
//  I-Talk_visionOS
//
//  Created by José Guerrero  on 21/03/24.
//

import SwiftUI

@main
struct I_Talk_visionOSApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }

        ImmersiveSpace(id: "ImmersiveSpace") {
            ImmersiveView()
        }
    }
}
