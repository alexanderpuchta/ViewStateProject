//
// Copyright © 2024 alexandercreates.de - All rights reserved.
//

import SwiftUI
import ViewStateProjectCoreUI

struct GeneralEmptyView: View {
    
    let message: String?
    
    
    // MARK: - View
    
    var body: some View {
        self.emptyMessage
            .textAndStyle(.body2Information)
            .multilineTextAlignment(.center)
            .spacing(.xl)
    }
}


// MARK: - Helper

private extension GeneralEmptyView {
    
    var emptyMessage: String {
        self.message ?? ""
    }
}
