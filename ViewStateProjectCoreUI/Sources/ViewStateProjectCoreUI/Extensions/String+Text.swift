//
// Copyright © 2024 alexandercreates.de - All rights reserved.
//

import SwiftUI

public extension String {
    
    var text: some View {
        Text(self)
    }
    
    func textAndStyle(_ style: TextStyle, opactiy: Opacity = .max) -> some View {
        self.text
            .style(style, opactiy: opactiy)
    }
}
