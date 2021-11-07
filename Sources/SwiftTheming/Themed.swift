import SwiftUI

open class Themed<Asset: Assetable> {
    open func colorSet(for asset: Asset.ColorAsset) -> ColorSet {
        fatalError("Need to override the \(#function) method.")
    }
    
    open func imageSet(for asset: Asset.ImageAsset) -> ImageSet {
        fatalError("Need to override the \(#function) method.")
    }
    
    open func gradientSet(for asset: Asset.GradientAsset) -> GradientSet {
        fatalError("Need to override the \(#function) method.")
    }
    
    open func fontSet(for asset: Asset.FontAsset) -> FontSet {
        fatalError("Need to override the \(#function) method.")
    }
}
