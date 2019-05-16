//
// Created by Scott Moon on 2019-05-06.
// Copyright (c) 2019 Scott Moon. All rights reserved.
//

import UIKit

public struct LabelBuilder: Builder, BackgroundColorable, CALayerUsable, ConstraintUsable, ViewUsable {
  public var targetView: UILabel

  public init() {
    targetView = UILabel()
  }

  public func setText(_ text: String) -> LabelBuilder {
    targetView.text = text
    return self
  }

  public func setTextAlignment(_ alignment: NSTextAlignment) -> LabelBuilder {
    targetView.textAlignment = alignment
    return self
  }

  public func setFont(_ font: UIFont) -> LabelBuilder {
    targetView.font = font
    return self
  }

  public func setTextColor(_ color: UIColor) -> LabelBuilder {
    targetView.textColor = color
    return self
  }

  public func setNumberOfLines(_ line: Int) -> LabelBuilder {
    targetView.numberOfLines = line
    return self
  }
}
