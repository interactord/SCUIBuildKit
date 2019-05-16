//
// Created by Scott Moon on 2019-05-07.
// Copyright (c) 2019 Scott Moon. All rights reserved.
//

import UIKit

public struct ButtonBuilder: Builder, CALayerUsable, BackgroundColorable, ConstraintUsable, ViewUsable {
  public var targetView: UIButton

	public init(type: UIButton.ButtonType? = nil) {
    targetView = UIButton(type: type ?? .system)
	}

  public func setTitle(_ title: String, state: UIControl.State? = nil) -> ButtonBuilder {
		targetView.setTitle(title, for: state ?? .normal)
		return self
  }

  public func setFont(_ font: UIFont) -> ButtonBuilder {
    targetView.titleLabel?.font = font
		return self
  }

	public func setTitleColor(_ color: UIColor, state: UIControl.State? = nil) -> ButtonBuilder {
		targetView.setTitleColor(color, for: state ?? .normal)
		return self
	}

}
