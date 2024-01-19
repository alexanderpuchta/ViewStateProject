//
// Copyright © 2024 alexandercreates.de - All rights reserved.
//

import SwiftUI

public extension View {
    
    func spacing(_ type: Padding = .m, edges: Edge.Set = .all) -> some View {
        self.padding(edges, type.rawValue)
    }
}
