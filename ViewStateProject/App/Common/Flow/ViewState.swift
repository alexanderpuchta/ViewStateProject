//
// Copyright © 2024 alexandercreates.de - All rights reserved.
//

import Foundation

enum ViewState<Result: Equatable> {
    
    case empty(String?)
    case failed(Error)
    case idle
    case loading
    case success(Result)
}


// MARK: - ViewState + Equatable

extension ViewState: Equatable {
    
    static func == (lhs: ViewState<Result>, rhs: ViewState<Result>) -> Bool {
        switch (lhs, rhs) {
        case let (.empty(lhsString), .empty(rhsString)):
            lhsString == rhsString
            
        case let (.failed(lhsError), .failed(rhsError)):
            lhsError.localizedDescription == rhsError.localizedDescription
            
        case (.idle, .idle):
            true
            
        case (.loading, .loading):
            true
            
        case let (.success(lhsResult), .success(rhsResult)):
            lhsResult == rhsResult
            
        default:
            false
        }
    }
}
