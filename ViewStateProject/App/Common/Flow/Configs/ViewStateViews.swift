//
// Copyright © 2024 alexandercreates.de - All rights reserved.
//

import SwiftUI

struct ViewStateViews<
    Content: View,
    EmptyContent: View,
    ErrorContent: View,
    LoadingContent: View
> {
    
    let content: Content
    let empty: EmptyContent?
    let error: ErrorContent?
    let loading: LoadingContent?
}
