//
// Copyright © 2024 alexandercreates.de - All rights reserved.
//

import SwiftUI

struct PositionKey: PreferenceKey {
    
    static var defaultValue: CGRect = .zero
    
    static func reduce(value: inout CGRect, nextValue: () -> CGRect) {
        value = nextValue()
    }
}
