// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable superfluous_disable_command file_length implicit_return prefer_self_in_static_references

// MARK: - Strings

// swiftlint:disable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:disable nesting type_body_length type_name vertical_whitespace_opening_braces
internal enum L10n {
  internal enum Localizable {
    internal enum AppTab {
      internal enum Title {
        /// Start
        internal static let home = L10n.tr("Localizable", "app_tab.title.home", fallback: "Start")
        /// Einstellungen
        internal static let settings = L10n.tr("Localizable", "app_tab.title.settings", fallback: "Einstellungen")
      }
    }
    internal enum Home {
      internal enum Empty {
        /// Aktuell gibt es hier nichts zu sehen. Versuch es später nochmal.
        internal static let message = L10n.tr("Localizable", "home.empty.message", fallback: "Aktuell gibt es hier nichts zu sehen. Versuch es später nochmal.")
      }
      internal enum Error {
        /// Ein Fehler ist aufgetreten. Bitte versuche es später noch einmal.
        internal static let message = L10n.tr("Localizable", "home.error.message", fallback: "Ein Fehler ist aufgetreten. Bitte versuche es später noch einmal.")
      }
      internal enum Loading {
        /// Bitte warten, die benötigten Daten werden geladen.
        internal static let message = L10n.tr("Localizable", "home.loading.message", fallback: "Bitte warten, die benötigten Daten werden geladen.")
      }
      internal enum NavigationBar {
        /// Start
        internal static let title = L10n.tr("Localizable", "home.navigation_bar.title", fallback: "Start")
      }
    }
  }
  internal enum NonLocalizable {
    /// ViewStateProject
    internal static let appName = L10n.tr("NonLocalizable", "app_name", fallback: "ViewStateProject")
  }
}
// swiftlint:enable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:enable nesting type_body_length type_name vertical_whitespace_opening_braces

// MARK: - Implementation Details

extension L10n {
  private static func tr(_ table: String, _ key: String, _ args: CVarArg..., fallback value: String) -> String {
    let format = BundleToken.bundle.localizedString(forKey: key, value: value, table: table)
    return String(format: format, locale: Locale.current, arguments: args)
  }
}

// swiftlint:disable convenience_type
private final class BundleToken {
  static let bundle: Bundle = {
    #if SWIFT_PACKAGE
    return Bundle.module
    #else
    return Bundle(for: BundleToken.self)
    #endif
  }()
}
// swiftlint:enable convenience_type
