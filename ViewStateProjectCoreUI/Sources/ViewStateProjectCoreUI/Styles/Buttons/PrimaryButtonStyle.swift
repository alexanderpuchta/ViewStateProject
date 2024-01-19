//
// Copyright © 2024 alexandercreates.de - All rights reserved.
//

import SwiftUI

public extension ButtonStyle where Self == PrimaryButtonStyle {
    
    static var primaryDefault: Self {
        Self.primary(type: .primary)
    }
    
    static var primaryError: Self {
        Self.primary(type: .error)
    }
    
    static func primary(type: TextType) -> Self {
        PrimaryButtonStyle(type: type)
    }
}

public struct PrimaryButtonStyle: ButtonStyle {
    
    let type: TextType
    
    
    // MARK: - View
    
    public func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .style(TextStyle(
                type: .information,
                typography: .body
            ))
            .scaleEffect(configuration.isPressed ? 0.9 : 1.1)
            .frame(
                maxWidth: .infinity,
                maxHeight: .infinity,
                alignment: .center
            )
            .background(self.type.backgroundColor)
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
