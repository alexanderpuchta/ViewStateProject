//
// Copyright © 2024 alexandercreates.de - All rights reserved.
//

import Foundation

final class AppState: ObservableObject {
    
    @Published
    var destination = AppDestination()
    
    @Published
    var tab: AppTab = .home
}
