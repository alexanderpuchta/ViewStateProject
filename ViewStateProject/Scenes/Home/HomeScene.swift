//
// Copyright © 2024 alexandercreates.de - All rights reserved.
//

import SwiftUI
import ViewStateProjectCoreUI

struct HomeScene: View {
    
    @EnvironmentObject
    private var appState: AppState
    
    @StateObject
    private var router = HomeRouter()
    
    
    // MARK: - View
    
    var body: some View {
        NavigationStack(path: self.$router.path) {
            HomeView()
                .environmentObject(self.router)
                .navigationDestination(for: HomeRouter.Destination.self) { destination in
                    destination
                        .view
                        .environmentObject(self.router)
                }
        }
        .onReceive(self.appState.$destination, perform: self.handleOnReceiveDestination)
    }
}


// MARK: - Helper

private extension HomeScene {
    
    func handleOnReceiveDestination(_ destination: AppDestination) {
        
        guard let homeDestination = destination.home else {
            return
        }
        
        self.router.push(homeDestination)
    }
}


// MARK: - Destination

private extension HomeRouter.Destination {
    
    @ViewBuilder
    var view: some View {
        switch self {
        case .details:
            "details"
                .textAndStyle(.h1Warning)
        }
    }
}
