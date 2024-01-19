//
// Copyright © 2024 alexandercreates.de - All rights reserved.
//

import Foundation
import SFSafeSymbols

struct ViewStateWrapperConfiguration {
    
    let navigationLeading: NavigationBarAction?
    let navigationTitle: String
    let navigationTrailing: NavigationBarAction?
    let retry: OnReloadAction?
    
    
    // MARK: - Init
    
    init(
        navigationTitle: String = "",
        onRetry: OnReloadAction? = nil,
        leading: NavigationBarAction? = nil,
        trailing: NavigationBarAction? = nil
    ) {
        
        self.navigationLeading = leading
        self.navigationTitle = navigationTitle
        self.retry = onRetry
        self.navigationTrailing = trailing
    }
}


// MARK: ViewStateWrapperConfiguration + Actions

extension ViewStateWrapperConfiguration {
    
    typealias OnReloadAction = () -> Void
    typealias OnTapAction = () -> Void
}


// MARK: - ViewStateWrapperConfiguration + NavigationBarAction

extension ViewStateWrapperConfiguration {
    
    struct NavigationBarAction {
        
        let action: OnTapAction
        let icon: SFSymbol?
        let title: String
        
        
        // MARK: - Init
        
        init(
            title: String,
            icon: SFSymbol? = nil,
            action: @escaping OnTapAction
        ) {
            
            self.action = action
            self.icon = icon
            self.title = title
        }
    }
}
