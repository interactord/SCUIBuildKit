//
// Created by Scott Moon on 2019-05-06.
// Copyright (c) 2019 Scott Moon. All rights reserved.
//

import UIKit

public protocol CALayerUsable: Builder {
	func setCornerRadius(_ radius: CGFloat) -> Self
	func setBorderWidth(_ width: CGFloat) -> Self
	func setBorderColor(_ color: CGColor) -> Self
}

extension CALayerUsable {

	public func setCornerRadius(_ radius: CGFloat) -> Self {
		let targetView = isUIViewType(self.targetView)
    targetView.layer.cornerRadius = radius
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
}
