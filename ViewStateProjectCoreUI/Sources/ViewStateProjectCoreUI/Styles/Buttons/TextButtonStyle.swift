//
// Copyright © 2024 alexandercreates.de - All rights reserved.
//

import SwiftUI

public extension ButtonStyle where Self == TextButtonStyle {
    
    static var textDefault: Self {
        Self.text(type: .primary)
    }
    
    static var textError: Self {
        Self.text(type: .error)
    }
    
    static func text(type: TextType) -> Self {
        TextButtonStyle(type: type)
    }
}

public struct TextButtonStyle: ButtonStyle {
    
    let type: TextType
    
    
    // MARK: - View
    
    public func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .underline()
            .style(TextStyle(
                type: .custom(asset: self.type.asset),
                typography: .body
            ))
    }
}


// MARK: - TextType

private extension TextType {
    
    var backgroundColor: Color {
        switch self {
        case let .custom(asset):
            asset.swiftUIColor
            
        case .error:
            CoreUI.Colors.barnRed.swiftUIColor
            
        case .information:
            CoreUI.Colors.dimGrey.swiftUIColor
            
        case .primary:
            CoreUI.Colors.timberwolf.swiftUIColor
            
        case .secondary:
            CoreUI.Colors.charcoal.swiftUIColor
            
        case .success:
            CoreUI.Colors.teaGreen.swiftUIColor
            
        case .warning:
            CoreUI.Colors.sage.swiftUIColor
        }
    }
}
