//
// Created by Scott Moon on 2019-05-16.
// Copyright (c) 2019 Scott Moon. All rights reserved.
//

import UIKit

class ViewBuilder: Builder, CALayerUsable, ConstraintUsable, BackgroundColorable, ViewUsable {
	public private(set) var targetView: UIView

	public init() {
		targetView = UIView()
	}
}