//
// Copyright © 2024 alexandercreates.de - All rights reserved.
//

import SwiftUI
import ViewStateProjectCoreUI

struct HomeViewWrapper: View {
    
    let state: HomeView.ViewModel.State
    
    
    // MARK: - View
    
    var body: some View {
        ViewStateWrapper(
            configuration: ViewStateWrapperConfiguration(navigationTitle: L10n.Localizable.Home.NavigationBar.title),
            state: self.state
        ) {
            self.contentView
        } empty: {
            self.emptyView
                .spacing(.xxl)
        } error: {
            self.errorView
                .spacing(.xxl)
        } loading: {
            self.loadingView
                .spacing(.xxl)
        }
    }
}


// MARK: - Localization

private extension HomeViewWrapper {
    typealias Localization = L10n.Localizable.Home
}


// MARK: - Views

private extension HomeViewWrapper {
    
    @ViewBuilder
    var contentView: some View {
        if case let .success(data) = self.state {
            VStack(alignment: .leading) {
                ForEach(data, id: \.self) { item in
                    "\(item)"
                        .textAndStyle(.h1Primary)
                }
            }
            .spacing(.xxl)
        }
    }
    
    var emptyView: some View {
        Localization.Empty.message
            .textAndStyle(.bodyInformation)
    }
    
    var errorView: some View {
        Localization.Error.message
            .textAndStyle(.bodyInformation)
    }
    
    var loadingView: some View {
        VStack(spacing: Padding.xxl.rawValue) {
            
            ProgressView()
            
            Localization.Loading.message
                .textAndStyle(.bodyInformation)
                .spacing(.xl, edges: .horizontal)
        }
    }
}


// MARK: - Preview

#Preview("empty state") {
    NavigationView {
        HomeViewWrapper(state: .empty(nil))
    }
}

#Preview("failed state") {
    NavigationView {
        HomeViewWrapper(state: .failed(HomeViewError.unknown))
    }
}

#Preview("idle state") {
    NavigationView {
        HomeViewWrapper(state: .idle)
    }
}

#Preview("loading state") {
    NavigationView {
        HomeViewWrapper(state: .loading)
    }
}

#Preview("success state") {
    NavigationView {
        HomeViewWrapper(state: .success([
            .news
        ]))
    }
}
