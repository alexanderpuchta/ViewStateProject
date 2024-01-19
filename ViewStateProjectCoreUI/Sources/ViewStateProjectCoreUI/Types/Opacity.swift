//
// Copyright © 2024 alexandercreates.de - All rights reserved.
//

import Foundation

public enum Opacity {
    
    case custom(value: CGFloat)
    case max
    case mid
    case min
}


// MARK: - RawValue

extension Opacity {
    
    var rawValue: CGFloat {
        switch self {
        case let .custom(value):
            value
            
        case .max:
            1.0
            
        case .mid:
            0.5
            
        case .min:
            0.3
        }
    }
}
