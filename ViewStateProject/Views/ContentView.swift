//
// Copyright © 2024 alexandercreates.de - All rights reserved.
//

import SwiftUI
import ViewStateProjectCoreUI

struct ContentView: View {
    
    @EnvironmentObject
    private var appState: AppState

    
    // MARK: - View
    
    var body: some View {
        self.content
    }
}


// MARK: - Views

private extension ContentView {
    
    var content: some View {
        TabView(selection: self.$appState.tab) {
            
            HomeScene()
                .tab(.home)
            
            SettingsScene()
                .tab(.settings)
        }
    }
}


// MARK: - Preview

#Preview {
    ContentView()
        .environmentObject(AppState())
}
