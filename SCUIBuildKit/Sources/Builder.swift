//
// Created by Scott Moon on 2019-05-06.
// Copyright (c) 2019 Scott Moon. All rights reserved.
//

import UIKit

public protocol Builder {
	associatedtype ViewType
	var targetView: ViewType { get }

	func build() -> ViewType
}

extension Builder {
  public func build() -> ViewType {
		return targetView
	}

	func isUIViewType(_ targetView: ViewType) -> UIView {
		guard let targetView = targetView as? UIView else {
			fatalError("targetView is not same UIView")
		}
		return targetView
	}
}
