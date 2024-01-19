//
// Copyright © 2024 alexandercreates.de - All rights reserved.
//

import Foundation

protocol UserDefaultStorageRepresentable {
    var isShowRoomActive: Bool { get set }
}


// MARK: - UserDefaultStorage

struct UserDefaultStorage: UserDefaultStorageRepresentable {
    
    @UserDefault(key: Constants.UserDefaultKey.enableShowRoom, defaultValue: false)
    var isShowRoomActive: Bool
}


// MARK: - Constants

private extension Constants {
    
    enum UserDefaultKey {
        static let enableShowRoom = "enabled_show_room"
    }
}
