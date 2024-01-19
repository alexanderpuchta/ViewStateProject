//
// Copyright © 2024 alexandercreates.de - All rights reserved.
//

import Combine
import Foundation

@propertyWrapper
struct UserDefault<T> {
    
    private let key: String
    private let defaultValue: T
    private let publisher = PassthroughSubject<T, Never>()
    private let userDefaults: UserDefaults
    
    
    // MARK: - Init
    
    init(
        key: String,
        defaultValue: T,
        userDefaults: UserDefaults = .standard
    ) {
        
        self.key = key
        self.defaultValue = defaultValue
        self.userDefaults = userDefaults
    }
    
    
    // MARK: - Property wrapper
    
    var projectedValue: AnyPublisher<T, Never> {
        self.publisher.eraseToAnyPublisher()
    }
    
    var wrappedValue: T {
        get {
            self.userDefaults.object(forKey: self.key) as? T ?? self.defaultValue
        }
        set {
            
            self.userDefaults.set(newValue, forKey: self.key)
            self.publisher.send(newValue)
        }
    }
}
