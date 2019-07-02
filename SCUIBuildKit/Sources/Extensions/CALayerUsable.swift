//
// Created by Scott Moon on 2019-05-06.
// Copyright (c) 2019 Scott Moon. All rights reserved.
//

import UIKit

public protocol CALayerUsable: Builder {
	func setCornerRadius(_ radius: CGFloat) -> Self
	func setBorderWidth(_ width: CGFloat) -> Self
	func setBorderColor(_ color: CGColor) -> Self
	func setShadowOffset(_ offset: CGSize) -> Self
	func setShadowColor(_ color: CGColor) -> Self
	func setShadowOpacity(_ opacity: Float) -> Self
	func setShadowRadius(_ radius: CGFloat) -> Self
	func setShouldRasterize(_ rasterize: Bool) -> Self
}

extension CALayerUsable {

	public func setCornerRadius(_ radius: CGFloat) -> Self {
		let targetView = isUIViewType(self.targetView)
    targetView.layer.cornerRadius = radius
    targetView.layer.masksToBounds = true
    return self
	}

  public func setBorderWidth(_ width: CGFloat) -> Self {
		let targetView = isUIViewType(self.targetView)
		targetView.layer.borderWidth = width
		return self
	}

  public func setBorderColor(_ color: CGColor) -> Self {
		let targetView = isUIViewType(self.targetView)
		targetView.layer.borderColor = color
		return self
	}

	public func setShadowOffset(_ offset: CGSize) -> Self {
		let targetView = isUIViewType(self.targetView)
		targetView.layer.shadowOffset = offset
		return self
	}

	public func setShadowOpacity(_ opacity: Float) -> Self {
		let targetView = isUIViewType(self.targetView)
		targetView.layer.shadowOpacity = opacity
		return self
	}

	public func setShadowColor(_ color: CGColor) -> Self {
		let targetView = isUIViewType(self.targetView)
		targetView.layer.shadowColor = color
		return self
	}

	public func setShadowRadius(_ radius: CGFloat) -> Self {
		let targetView = isUIViewType(self.targetView)
		targetView.layer.shadowRadius = radius
		return self
	}

	public func setShouldRasterize(_ rasterize: Bool) -> Self {
		let targetView = isUIViewType(self.targetView)
		targetView.layer.shouldRasterize = rasterize
		return self
	}
}
