//
// Copyright © 2024 alexandercreates.de - All rights reserved.
//

import Foundation

public enum FontType {
    
    case body
    case body2
    
    case caption
    case caption2
    
    case h1
    case h2
    
    case subTitle
    case subTitle2
    
    case title
    case title2
}


// MARK: - FontType + Properties

extension FontType {
    
    var convertible: FontConvertible {
        switch self {
        case .body,
             .body2:
            FontName.regular
            
        case .caption,
             .caption2:
            FontName.bold
            
        case .h1,
             .h2:
            FontName.bold
            
        case .subTitle,
             .subTitle2:
            FontName.medium
            
        case .title,
             .title2:
            FontName.bold
        }
    }
    
    var lineHeight: CGFloat {
        switch self {
        case .body:
            18
            
        case .body2:
            16
            
        case .caption:
            12
            
        case .caption2:
            10
            
        case .h1:
            30
            
        case .h2:
            26
            
        case .subTitle:
            18
            
        case .subTitle2:
            14
            
        case .title:
            24
            
        case .title2:
            20
        }
    }
    
    var size: CGFloat {
        switch self {
        case .body:
            16
            
        case .body2:
            14
            
        case .caption:
            12
            
        case .caption2:
            10
            
        case .h1:
            26
            
        case .h2:
            22
            
        case .subTitle:
            16
            
        case .subTitle2:
            12
            
        case .title:
            20
            
        case .title2:
            16
        }
    }
}


// MARK: - Helper

private extension FontType {
    typealias FontName = FontFamily.SometypeMono
    typealias HeadlineFontName = FontFamily.YsabeauSC
}
