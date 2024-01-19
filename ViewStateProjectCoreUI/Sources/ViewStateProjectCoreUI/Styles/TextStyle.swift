//
// Copyright © 2024 alexandercreates.de - All rights reserved.
//

import Foundation

public struct TextStyle {
    
    let type: TextType
    let typography: FontType
    
    public init(
        type: TextType,
        typography: FontType
    ) {
        
        self.type = type
        self.typography = typography
    }
}


// MARK: - TextStyles + Body

public extension TextStyle {
    
    static let bodyError = Self(
        type: .error,
        typography: .body
    )
    
    static let bodyInformation = Self(
        type: .information,
        typography: .body
    )
    
    static let bodyPrimary = Self(
        type: .primary,
        typography: .body
    )
    
    static let bodySecondary = Self(
        type: .secondary,
        typography: .body
    )
    
    static let bodySuccess = Self(
        type: .success,
        typography: .body
    )
    
    static let bodyWarning = Self(
        type: .warning,
        typography: .body
    )
    
    static let body2Error = Self(
        type: .error,
        typography: .body2
    )
    
    static let body2Information = Self(
        type: .information,
        typography: .body2
    )
    
    static let body2Primary = Self(
        type: .primary,
        typography: .body2
    )
    
    static let body2Secondary = Self(
        type: .secondary,
        typography: .body2
    )
    
    static let body2Success = Self(
        type: .success,
        typography: .body2
    )
    
    static let body2Warning = Self(
        type: .warning,
        typography: .body2
    )
}


// MARK: - TextStyle + Caption

public extension TextStyle {
    
    static let captionError = Self(
        type: .error,
        typography: .caption
    )
    
    static let captionInformation = Self(
        type: .information,
        typography: .caption
    )
    
    static let captionPrimary = Self(
        type: .primary,
        typography: .caption
    )
    
    static let captionSecondary = Self(
        type: .secondary,
        typography: .caption
    )
    
    static let captionSuccess = Self(
        type: .success,
        typography: .caption
    )
    
    static let captionWarning = Self(
        type: .warning,
        typography: .caption
    )
    
    static let caption2Error = Self(
        type: .error,
        typography: .caption2
    )
    
    static let caption2Information = Self(
        type: .information,
        typography: .caption2
    )
    
    static let caption2Primary = Self(
        type: .primary,
        typography: .caption2
    )
    
    static let caption2Secondary = Self(
        type: .secondary,
        typography: .caption2
    )
    
    static let caption2Success = Self(
        type: .success,
        typography: .caption2
    )
    
    static let caption2Warning = Self(
        type: .warning,
        typography: .caption2
    )
}


// MARK: - TextStyle + Header

public extension TextStyle {
    
    static let h1Error = Self(
        type: .error,
        typography: .h1
    )
    
    static let h1Information = Self(
        type: .information,
        typography: .h1
    )
    
    static let h1Primary = Self(
        type: .primary,
        typography: .h1
    )
    
    static let h1Secondary = Self(
        type: .secondary,
        typography: .h1
    )
    
    static let h1Success = Self(
        type: .success,
        typography: .h1
    )
    
    static let h1Warning = Self(
        type: .warning,
        typography: .h1
    )
    
    static let h2Error = Self(
        type: .error,
        typography: .h2
    )
    
    static let h2Information = Self(
        type: .information,
        typography: .h2
    )
    
    static let h2Primary = Self(
        type: .primary,
        typography: .h2
    )
    
    static let h2Secondary = Self(
        type: .secondary,
        typography: .h2
    )
    
    static let h2Success = Self(
        type: .success,
        typography: .h2
    )
    
    static let h2Warning = Self(
        type: .warning,
        typography: .h2
    )
}


// MARK: - TextStyle + SubTitle

public extension TextStyle {
    
    static let subTitleError = Self(
        type: .error,
        typography: .subTitle
    )
    
    static let subTitleInformation = Self(
        type: .information,
        typography: .subTitle
    )
    
    static let subTitlePrimary = Self(
        type: .primary,
        typography: .subTitle
    )
    
    static let subTitleSecondary = Self(
        type: .secondary,
        typography: .subTitle
    )
    
    static let subTitleSuccess = Self(
        type: .success,
        typography: .subTitle
    )
    
    static let subTitleWarning = Self(
        type: .warning,
        typography: .subTitle
    )
    
    static let subTitle2Error = Self(
        type: .error,
        typography: .subTitle2
    )
    
    static let subTitle2Information = Self(
        type: .information,
        typography: .subTitle2
    )
    
    static let subTitle2Primary = Self(
        type: .primary,
        typography: .subTitle2
    )
    
    static let subTitle2Secondary = Self(
        type: .secondary,
        typography: .subTitle2
    )
    
    static let subTitle2Success = Self(
        type: .success,
        typography: .subTitle2
    )
    
    static let subTitle2Warning = Self(
        type: .warning,
        typography: .subTitle2
    )
}


// MARK: - TextStyle + Title

public extension TextStyle {
    
    static let titleError = Self(
        type: .error,
        typography: .title
    )
    
    static let titleInformation = Self(
        type: .information,
        typography: .title
    )
    
    static let titlePrimary = Self(
        type: .primary,
        typography: .title
    )
    
    static let titleSecondary = Self(
        type: .secondary,
        typography: .title
    )
    
    static let titleSuccess = Self(
        type: .success,
        typography: .title
    )
    
    static let titleWarning = Self(
        type: .warning,
        typography: .title
    )
    
    static let title2Error = Self(
        type: .error,
        typography: .title2
    )
    
    static let title2Information = Self(
        type: .information,
        typography: .title2
    )
    
    static let title2Primary = Self(
        type: .primary,
        typography: .title2
    )
    
    static let title2Secondary = Self(
        type: .secondary,
        typography: .title2
    )
    
    static let title2Success = Self(
        type: .success,
        typography: .title2
    )
    
    static let title2Warning = Self(
        type: .warning,
        typography: .title2
    )
}
