//
// Created by Scott Moon on 2019-05-16.
// Copyright (c) 2019 Scott Moon. All rights reserved.
//

import UIKit

public protocol ViewUsable: Builder {
	func setAlpha(_ opacity: CGFloat) -> Self
}

extension ViewUsable {

	public func setAlpha(_ alpha: CGFloat) -> Self {
		let targetView = isUIViewType(self.targetView)
		targetView.alpha = alpha
		return  self
	}
}