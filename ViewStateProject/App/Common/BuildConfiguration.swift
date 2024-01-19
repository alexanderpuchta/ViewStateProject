//
// Copyright © 2024 alexandercreates.de - All rights reserved.
//

import Foundation

enum BuildConfiguration {
    case debug
    case qa
    case release
}


// MARK: - BuildConfiguration + Current

extension BuildConfiguration {
    
    static var current: Self {
        #if DEBUG
            .debug
        #elseif QA
            .qa
        #elseif RELEASE
            .release
        #else
            fatalError("could not find build configuration")
        #endif
    }
}
