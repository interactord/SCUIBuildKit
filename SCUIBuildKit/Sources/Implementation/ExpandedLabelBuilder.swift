//
//  ExpandedLabelBuilder.swift
//  SCUIBuildKit
//
//  Created by Scott Moon on 03/07/2019.
//  Copyright © 2019 Scott Moon. All rights reserved.
//

import UIKit

public struct ExpandedLabelBuilder: Builder, BackgroundColorable, CALayerUsable, ConstraintUsable, ViewUsable {
  public var targetView: ExpandedLabelView

  public init() {
    targetView = ExpandedLabelView()
  }

  public func setText(_ text: String) -> ExpandedLabelBuilder {
    targetView.text = text
    return self
  }

  public func setTextAlignment(_ alignment: NSTextAlignment) -> ExpandedLabelBuilder {
    targetView.textAlignment = alignment
    return self
  }

  public func setFont(_ font: UIFont) -> ExpandedLabelBuilder {
    targetView.font = font
    return self
  }

  public func setTextColor(_ color: UIColor) -> ExpandedLabelBuilder {
    targetView.textColor = color
    return self
  }

  public func setNumberOfLines(_ line: Int) -> ExpandedLabelBuilder {
    targetView.numberOfLines = line
    return self
  }

  public func setPadding(_ padding: UIEdgeInsets) -> ExpandedLabelBuilder {
    targetView.contentInsets = padding
    return self
  }
}
