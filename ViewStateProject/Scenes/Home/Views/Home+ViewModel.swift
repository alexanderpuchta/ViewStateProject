//
// Copyright © 2024 alexandercreates.de - All rights reserved.
//

import Foundation

extension HomeView {
    
    final class ViewModel: ViewStateObservable {
        
        @Published
        private(set) var state: State = .idle
    }
}


enum HomeViewError: Error {
    
    case unknown
}


// MARK: - ViewStateObservable

extension HomeView.ViewModel {
    
    typealias Action = ViewAction<Interaction>
    typealias State = ViewState<[HomeSection]>
    
    enum Interaction {
        case fetch
    }
    
    func execute(_ action: Action) {
        
        guard case let .action(interaction) = action else {
            return
        }
        
        switch interaction {
        case .fetch:
            self.executeFetch()
        }
    }
}


// MARK: - Helper

private extension HomeView.ViewModel {
    
    func executeFetch() {}
}
