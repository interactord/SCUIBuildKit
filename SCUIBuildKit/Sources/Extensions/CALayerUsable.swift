//
// Created by Scott Moon on 2019-05-06.
// Copyright (c) 2019 Scott Moon. All rights reserved.
//

import UIKit

public protocol CALayerUsable: Builder {
	func setCornerRadius(_ radius: CGFloat) -> Self
}

extension CALayerUsable {
	public func setCornerRadius(_ radius: CGFloat) -> Self {
		let targetView = isUIViewType(self.targetView)
    targetView.layer.cornerRadius = radius
    return self
	}
}
