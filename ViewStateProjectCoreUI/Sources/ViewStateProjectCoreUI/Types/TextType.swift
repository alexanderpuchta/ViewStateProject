//
// Copyright © 2024 alexandercreates.de - All rights reserved.
//

public enum TextType {
    
    case custom(asset: ColorAsset)
    case error
    case information
    case primary
    case secondary
    case success
    case warning
}


extension TextType: Identifiable {
    
    public var id: Int {
        switch self {
        case .custom:
            0
            
        case .error:
            1
            
        case .information:
            2
            
        case .primary:
            3
            
        case .secondary:
            4
            
        case .success:
            5
            
        case .warning:
            6
        }
    }
}


// MARK: - TextType + Asset

extension TextType {
    
    var asset: ColorAsset {
        switch self {
        case let .custom(asset):
            asset
            
        case .error:
            Colors.barnRed
            
        case .information:
            Colors.dimGrey
            
        case .primary:
            Colors.prussianBlue
            
        case .secondary:
            Colors.sand
            
        case .success:
            Colors.teaGreen
            
        case .warning:
            Colors.citron
        }
    }
}


// MARK: - Helper

private extension TextType {
    typealias Colors = CoreUI.Colors
}
