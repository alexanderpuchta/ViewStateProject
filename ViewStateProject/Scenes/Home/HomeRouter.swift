//
// Copyright © 2024 alexandercreates.de - All rights reserved.
//

import Foundation

enum HomeDestination: Hashable {
    
    case details
}


// MARK: - HomeRouter

final class HomeRouter: DefaultRouterRepresentable {
    typealias Destination = HomeDestination
    
    @Published
    var path: [Destination] = []
    
    func push(_ destination: Destination) {
        self.path.append(destination)
    }
}
