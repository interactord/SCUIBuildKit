//
// Created by Scott Moon on 2019-05-08.
// Copyright (c) 2019 Scott Moon. All rights reserved.
//

import UIKit

public struct StackViewBuilder: Builder, ConstraintUsable, ViewUsable {
	public private(set) var targetView: UIStackView

	public init(arrangedSubViews: [UIView]) {
		targetView = UIStackView(arrangedSubviews: arrangedSubViews)
	}

	public func setAlignment(_ alignment: UIStackView.Alignment) -> StackViewBuilder {
		targetView.alignment = alignment
		return self
	}

	public func setAxis(_ axis: NSLayoutConstraint.Axis) -> StackViewBuilder {
		targetView.axis = axis
		return self
	}

	public func setDistribution(_ distribution: UIStackView.Distribution) -> StackViewBuilder {
		targetView.distribution = distribution
		return self
	}

	public func setSpacing(_ spacing: CGFloat) -> StackViewBuilder {
		targetView.spacing = spacing
		return self
	}

}
