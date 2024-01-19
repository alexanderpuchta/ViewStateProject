//
// Copyright © 2024 alexandercreates.de - All rights reserved.
//

import Foundation

public enum Corner {
    
    @frozen
    public struct Set: OptionSet {
        public let rawValue: Int
        
        public init(rawValue: Int) {
            self.rawValue = rawValue
        }
        
        public static let bottom = Corner.Set(rawValue: 1 << 0)
        public static let left = Corner.Set(rawValue: 1 << 1)
        public static let right = Corner.Set(rawValue: 1 << 2)
        public static let top = Corner.Set(rawValue: 2 << 2)
        public static let all: Corner.Set = [.bottom, .left, .right, .top]
    }
}
