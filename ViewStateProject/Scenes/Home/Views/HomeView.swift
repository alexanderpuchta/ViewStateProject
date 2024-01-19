//
// Copyright © 2024 alexandercreates.de - All rights reserved.
//

import SwiftUI
import ViewStateProjectCoreUI

struct HomeView: View {
    
    @StateObject
    private var viewModel = ViewModel()
    
    
    // MARK: - View
    
    var body: some View {
        HomeViewWrapper(state: self.viewModel.state)
    }
}
