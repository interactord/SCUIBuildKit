//
// Created by Scott Moon on 2019-05-14.
// Copyright (c) 2019 Scott Moon. All rights reserved.
//

import UIKit

public struct ActivityIndicatorViewBuilder: Builder, ViewUsable {

	public var targetView: UIActivityIndicatorView

	public init() {
		targetView = UIActivityIndicatorView()
	}

	public func setStyle(_ style: UIActivityIndicatorView.Style) -> ActivityIndicatorViewBuilder {
		targetView.style = style
		return self
	}

	public func setColor(_ color: UIColor) -> ActivityIndicatorViewBuilder {
		targetView.color = color
		return self
	}

	public func setHidesWhenStopped(_ stopped: Bool = true) -> ActivityIndicatorViewBuilder {
		targetView.hidesWhenStopped = true
		return self
	}

	public func startAnimating() -> ActivityIndicatorViewBuilder {
		targetView.startAnimating()
		return self
	}

}
