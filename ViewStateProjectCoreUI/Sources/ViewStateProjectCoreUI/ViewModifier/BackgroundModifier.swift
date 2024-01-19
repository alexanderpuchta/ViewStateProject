//
// Copyright © 2024 alexandercreates.de - All rights reserved.
//

import SwiftUI

public extension View {
    
    func background(asset: ColorAsset = CoreUI.Colors.ghostWhite) -> some View {
        self.modifier(BackgroundModifier(asset: asset))
    }
}


// MARK: - BackgroundModifier

struct BackgroundModifier: ViewModifier {
    
    let asset: ColorAsset
    
    
    // MARK: - View
    
    func body(content: Content) -> some View {
        ZStack(alignment: .top) {
            
            self.asset.swiftUIColor
                .ignoresSafeArea()
            
            content
        }
    }
}
