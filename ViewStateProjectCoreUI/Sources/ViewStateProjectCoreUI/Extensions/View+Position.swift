//
// Copyright © 2024 alexandercreates.de - All rights reserved.
//

import SwiftUI

public extension View {
    
    @ViewBuilder
    func position(_ completion: @escaping (CGRect) -> Void) -> some View {
        self.overlay {
            GeometryReader { geometry in
                
                let rect = geometry.frame(in: .global)
                
                Color.clear
                    .preference(key: PositionKey.self, value: rect)
                    .onPreferenceChange(PositionKey.self, perform: completion)
            }
        }
    }
}
