//
// Copyright © 2024 alexandercreates.de - All rights reserved.
//

import SwiftUI

public extension View {
    
    func style(_ textStyle: TextStyle, opactiy: Opacity = .max) -> some View {
        self.font(textStyle.font)
            .foregroundStyle(textStyle.color.opacity(opactiy.rawValue))
            .lineSpacing(textStyle.lineSpacing)
    }
}


// MARK: - Helper

private extension FontType {
    
    var font: SwiftUI.Font {
        SwiftUI.Font(self.convertible.font(size: self.size) as CTFont)
    }
}


private extension TextStyle {
    
    var color: Color {
        self.type.asset.swiftUIColor
    }
    
    var font: SwiftUI.Font {
        self.typography.font
    }
    
    var lineSpacing: CGFloat {
        abs(self.typography.lineHeight - self.typography.size)
    }
}
