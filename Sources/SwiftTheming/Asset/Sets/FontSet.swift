import UIKit

/// A font set to define fonts based on light and dark appearances.
public struct FontSet {
    let appearance: Appearance<UIFont>
    
    /// An initializer that defines a certain font for both light and dark appearances.
    /// - Parameter font: font for both light and dark appearances
    public init(`default` font: UIFont) {
        self.appearance = .static(font)
    }
    
    /// An initializer that defines fonts for light and dark appearances separately.
    /// - Parameters:
    ///   - light: font for light appearance
    ///   - dark: font for dark appearance
    public init(light: UIFont, dark: UIFont) {
        self.appearance = .dynamic(light: light, dark: dark)
    }
}
