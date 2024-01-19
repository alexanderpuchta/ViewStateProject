//
// Copyright © 2024 alexandercreates.de - All rights reserved.
//

import SwiftUI

struct ViewStateWrapper<
    Content: View,
    EmptyContent: View,
    ErrorContent: View,
    LoadingContent: View,
    Result: Equatable
>: View {
    
    let configuration: ViewStateWrapperConfiguration
    let views: ViewStateViews<Content, EmptyContent, ErrorContent, LoadingContent>
    let state: ViewState<Result>
    
    
    // MARK: - Init
    
    init(
        configuration: ViewStateWrapperConfiguration,
        state: ViewState<Result>,
        @ViewBuilder content: () -> Content,
        empty: (() -> EmptyContent)?,
        error: (() -> ErrorContent)?,
        loading: (() -> LoadingContent)?
    ) {
        
        self.configuration = configuration
        self.views = ViewStateViews<Content, EmptyContent, ErrorContent, LoadingContent>(
            content: content(),
            empty: empty?(),
            error: error?(),
            loading: loading?()
        )
        self.state = state
    }
    
    init(
        configuration: ViewStateWrapperConfiguration,
        state: ViewState<Result>,
        @ViewBuilder content: () -> Content
    ) where EmptyContent == EmptyView, ErrorContent == EmptyView, LoadingContent == EmptyView {
        self.init(
            configuration: configuration,
            state: state,
            content: content,
            empty: nil,
            error: nil,
            loading: nil
        )
    }
    
    init(
        configuration: ViewStateWrapperConfiguration,
        state: ViewState<Result>,
        @ViewBuilder content: () -> Content,
        empty: @escaping () -> EmptyContent
    ) where ErrorContent == EmptyView, LoadingContent == EmptyView {
        self.init(
            configuration: configuration,
            state: state,
            content: content,
            empty: empty,
            error: nil,
            loading: nil
        )
    }
    
    init(
        configuration: ViewStateWrapperConfiguration,
        state: ViewState<Result>,
        @ViewBuilder content: () -> Content,
        error: @escaping () -> ErrorContent
    ) where EmptyContent == EmptyView, LoadingContent == EmptyView {
        self.init(
            configuration: configuration,
            state: state,
            content: content,
            empty: nil,
            error: error,
            loading: nil
        )
    }
    
    init(
        configuration: ViewStateWrapperConfiguration,
        state: ViewState<Result>,
        @ViewBuilder content: () -> Content,
        loading: @escaping () -> LoadingContent
    ) where EmptyContent == EmptyView, ErrorContent == EmptyView {
        self.init(
            configuration: configuration,
            state: state,
            content: content,
            empty: nil,
            error: nil,
            loading: loading
        )
    }
    
    
    // MARK: - View
    
    var body: some View {
        Group {
            switch self.state {
            case .empty:
                self.emptyView
                
            case .failed:
                self.failedView
                
            case .idle,
                 .loading:
                self.loadingView
                
            case .success:
                self.views.content
            }
        }
    }
}


// MARK: - Views

private extension ViewStateWrapper {
    
    @ViewBuilder
    var emptyView: some View {
        if let emptyView = self.views.empty {
            emptyView
        } else {
            if case let .empty(message) = self.state {
                GeneralEmptyView(message: message)
            }
        }
    }
    
    @ViewBuilder
    var failedView: some View {
        if let errorView = self.views.error {
            errorView
        } else {
            if case let .failed(error) = self.state {
                GeneralErrorView(error: error)
            }
        }
    }
    
    @ViewBuilder
    var loadingView: some View {
        if let loadingView = self.views.loading {
            loadingView
        } else {
            GeneralLoadingView()
        }
    }
}
