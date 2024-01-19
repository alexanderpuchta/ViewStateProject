//
// Copyright © 2024 alexandercreates.de - All rights reserved.
//

import SwiftUI

public extension View {
    
    func colored(_ asset: ColorAsset) -> some View {
        self.background(asset.swiftUIColor)
    }
}
