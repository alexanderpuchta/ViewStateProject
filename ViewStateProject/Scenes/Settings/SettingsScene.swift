//
// Copyright © 2024 alexandercreates.de - All rights reserved.
//

import SwiftUI
import ViewStateProjectCoreUI

struct SettingsScene: View {
    
    @EnvironmentObject
    private var appState: AppState
    
    @StateObject
    private var router = SettingsRouter()
    
    
    // MARK: - View
    
    var body: some View {
        NavigationStack(path: self.$router.path) {
            self.content
                .environmentObject(self.router)
                .navigationDestination(for: SettingsRouter.Destination.self) { destination in
                    destination
                        .view
                        .environmentObject(self.router)
                }
        }
        .onReceive(self.appState.$destination, perform: self.handleOnReceiveDestination)
    }
}


// MARK: - Views

private extension SettingsScene {
    
    var content: some View {
        "".text
    }
}


// MARK: - Helper

private extension SettingsScene {
    
    func handleOnReceiveDestination(_ destination: AppDestination) {
        
        guard let settingsDestination = destination.settings else {
            return
        }
        
        self.router.push(settingsDestination)
    }
}


// MARK: - Destination

private extension SettingsRouter.Destination {
    
    @ViewBuilder
    var view: some View {
        switch self {
        case .notifications:
            "notifications"
                .textAndStyle(.h1Error)
            
        case .privacy:
            "privacy"
                .textAndStyle(.h1Error)
        }
    }
}
