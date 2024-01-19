//
// Copyright © 2024 alexandercreates.de - All rights reserved.
//

import Factory
import Foundation

extension Container {
    
    var userDefault: Factory<UserDefaultStorageRepresentable> {
        Factory(self) {
            UserDefaultStorage()
        }
    }
}
