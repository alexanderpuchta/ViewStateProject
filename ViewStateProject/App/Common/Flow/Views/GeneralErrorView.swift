//
// Copyright © 2024 alexandercreates.de - All rights reserved.
//

import SwiftUI
import ViewStateProjectCoreUI

struct GeneralErrorView: View {
    
    let error: Error
    
    
    // MARK: - View
    
    var body: some View {
        self.error.localizedDescription
            .textAndStyle(.body2Error)
            .multilineTextAlignment(.center)
            .spacing(.xl)
    }
}
