//
// Copyright © 2024 alexandercreates.de - All rights reserved.
//

import SwiftUI
import ViewStateProjectCoreUI

struct GeneralLoadingView: View {
    
    
    // MARK: - View
    
    var body: some View {
        VStack {
            ProgressView()
                .tint(CoreUI.Colors.barnRed.swiftUIColor)
        }
        .frame(
            maxWidth: .infinity,
            maxHeight: .infinity,
            alignment: .center
        )
    }
}
