//
//  ConstraintUsable.swift
//  SCUIBuilderKit
//
//  Created by Scott Moon on 06/05/2019.
//  Copyright © 2019 Scott Moon. All rights reserved.
//

import UIKit

public protocol ConstraintUsable: Builder {
  func setWidthAnchor(_ width: CGFloat) -> Self
  func setHeightAnchor(_ height: CGFloat) -> Self
}

public extension ConstraintUsable {
  func setWidthAnchor(_ width: CGFloat) -> Self {
    let targetView = isUIViewType(self.targetView)
    targetView.translatesAutoresizingMaskIntoConstraints = false
    targetView.widthAnchor.constraint(equalToConstant: width).isActive = true
    return self
  }

  func setGreatThenWidthAnchor(_ width: CGFloat) -> Self {
      let targetView = isUIViewType(self.targetView)
    targetView.translatesAutoresizingMaskIntoConstraints = false
    targetView.widthAnchor.constraint(greaterThanOrEqualToConstant: width).isActive = true
    return self
  }

  func setLessThenOrWidthAnchor(_ width: CGFloat) -> Self {
      let targetView = isUIViewType(self.targetView)
    targetView.translatesAutoresizingMaskIntoConstraints = false
    targetView.widthAnchor.constraint(lessThanOrEqualToConstant: width).isActive = true
    return self
  }

  func setHeightAnchor(_ height: CGFloat) -> Self {
    let targetView = isUIViewType(self.targetView)
    targetView.translatesAutoresizingMaskIntoConstraints = false
    targetView.heightAnchor.constraint(equalToConstant: height).isActive = true
    return self
  }

  func setGreatThenHeightAnchor(_ height: CGFloat) -> Self {
      let targetView = isUIViewType(self.targetView)
    targetView.translatesAutoresizingMaskIntoConstraints = false
    targetView.heightAnchor.constraint(greaterThanOrEqualToConstant: height).isActive = true
    return self
  }

  func setLessThenOrHeight(_ height: CGFloat) -> Self {
      let targetView = isUIViewType(self.targetView)
    targetView.translatesAutoresizingMaskIntoConstraints = false
    targetView.heightAnchor.constraint(lessThanOrEqualToConstant: height).isActive = true
    return self
  }

  func setRatio(width: CGFloat, height: CGFloat) -> Self {
    let targetView = isUIViewType(self.targetView)
    targetView.translatesAutoresizingMaskIntoConstraints = false
    targetView.addConstraint(
      NSLayoutConstraint(
        item: targetView,
        attribute: .height,
        relatedBy: .equal,
        toItem: targetView,
        attribute: .width,
        multiplier: height / width,
        constant: 0
      )
    )
    return self
  }
}
