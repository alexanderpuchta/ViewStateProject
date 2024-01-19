//
// Copyright © 2024 alexandercreates.de - All rights reserved.
//

import SwiftUI
import ViewStateProjectCore
import ViewStateProjectCoreUI

@main
struct ViewStateProjectApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self)
    private var appDelegate
    
    @State
    private var appState = AppState()
    
    @State
    private var viewModel = ViewModel()
    
    
    // MARK: - Init
    
    init() {
        
        ViewStateProjectCore.startUp()
        ViewStateProjectCoreUI.startUp()
    }
    
    
    // MARK: - Scene

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(self.appState)
        }
    }
}
