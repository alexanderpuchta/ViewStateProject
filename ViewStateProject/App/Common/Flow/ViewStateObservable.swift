//
// Copyright © 2024 alexandercreates.de - All rights reserved.
//

import Foundation

@MainActor
protocol ViewStateObservable: ObservableObject {
    
    associatedtype Input
    associatedtype Result: Equatable
    
    var state: ViewState<Result> { get }
    
    func execute(_ action: ViewAction<Input>)
}
