import SwiftUI
import UIKit

extension Font {
    /// A font of a given asset that allows to override the current appearance and theme optionally.
    /// - Parameters:
    ///   - asset: asset for font
    ///   - appearance: preferred appearance to override current appearance
    ///   - theme: preferred theme to override current theme
    public init(_ asset: FontAssetable, appearance: PreferredAppearance? = nil, theme: Theme? = nil) {
      self = Font(UIFont.asset(asset, appearance: appearance, theme: theme))
    }
}

extension UIFont {
  
  public static func asset(_ asset: FontAssetable, appearance: PreferredAppearance? = nil, theme: Theme? = nil) -> UIFont {
    ThemeProvider.shared.font(for: asset, preferredAppearance: appearance, on: theme)
  }
  
}
