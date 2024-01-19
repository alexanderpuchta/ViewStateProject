//
// Copyright © 2024 alexandercreates.de - All rights reserved.
//

import SFSafeSymbols
import SwiftUI
import ViewStateProjectCoreUI

extension View {
    
    func tab(_ tab: AppTab) -> some View {
        self.id(tab)
            .tabItem {
                VStack {
                    Image(systemSymbol: tab.image)
                    
                    tab.title
                        .text
                }
            }
    }
}


// MARK: - Helper

private extension AppTab {
    
    var image: SFSymbol {
        switch self {
        case .home:
            .houseFill
            
        case .settings:
            .wrenchAdjustableFill
        }
    }
    
    var title: String {
        switch self {
        case .home:
            "Home"
            
        case .settings:
            "Settings"
        }
    }
}
