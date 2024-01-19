//
// Copyright © 2024 alexandercreates.de - All rights reserved.
//

import SwiftUI

public extension View {
    
    func radius(_ type: RadiusType = .medium, edges: Corner.Set = .all) -> some View {
        self.modifier(RadiusModifier(
            type: type,
            edges: edges
        ))
    }
}


// MARK: - RadiusModifier

struct RadiusModifier: ViewModifier {
    
    let edges: Corner.Set
    let type: RadiusType
    
    
    // MARK: - Init
    
    init(
        type: RadiusType,
        edges: Corner.Set
    ) {
        
        self.edges = edges
        self.type = type
    }
    
    
    // MARK: - View
    
    func body(content: Content) -> some View {
        content
            .clipShape(
                UnevenRoundedRectangle(cornerRadii: RectangleCornerRadii(
                    topLeading: self.edges.isTopLeading ? self.type.rawValue : .zero,
                    bottomLeading: self.edges.isBottomLeading ? self.type.rawValue : .zero,
                    bottomTrailing: self.edges.isBottomTrailing ? self.type.rawValue : .zero,
                    topTrailing: self.edges.isTopTrailing ? self.type.rawValue : .zero
                ))
            )
    }
}


// MARK: - Corner.Set

private extension Corner.Set {
    
    var isBottomLeading: Bool {
        self.contains(.bottom) || self.contains(.left) || self.contains(.all)
    }
    
    var isBottomTrailing: Bool {
        self.contains(.bottom) || self.contains(.right) || self.contains(.all)
    }
    
    var isTopLeading: Bool {
        self.contains(.top) || self.contains(.left) || self.contains(.all)
    }
    
    var isTopTrailing: Bool {
        self.contains(.top) || self.contains(.right) || self.contains(.all)
    }
}
