//
// Copyright © 2024 alexandercreates.de - All rights reserved.
//

import Foundation

enum SettingsDestination {
    
    case notifications
    case privacy
}


// MARK: - SettingsRouter

final class SettingsRouter: DefaultRouterRepresentable {
    typealias Destination = SettingsDestination
    
    @Published
    var path: [Destination] = []
    
    func push(_ destination: Destination) {
        self.path.append(destination)
    }
}
