//
// Copyright © 2024 alexandercreates.de - All rights reserved.
//

import Foundation

protocol DefaultRouterRepresentable: ObservableObject {
    
    associatedtype Destination = Hashable
    
    var path: [Destination] { get set }
    
    func push(_ destination: Destination)
}
