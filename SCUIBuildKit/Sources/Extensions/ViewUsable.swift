//
// Created by Scott Moon on 2019-05-16.
// Copyright (c) 2019 Scott Moon. All rights reserved.
//

import UIKit

public protocol ViewUsable: Builder {
  func setAlpha(_ opacity: CGFloat) -> Self
  func setTag(_ tag: Int) -> Self
  func setTintColor(_ tintColor: UIColor) -> Self
  func setTransform(_ transform: CGAffineTransform) -> Self
}

extension ViewUsable {

  public func setAlpha(_ alpha: CGFloat) -> Self {
    let targetView = isUIViewType(self.targetView)
    targetView.alpha = alpha
    return self
  }

  public func setTag(_ tag: Int) -> Self {
    let targetView = isUIViewType(self.targetView)
    targetView.tag = tag
    return self
  }

  public func setTintColor(_ tintColor: UIColor) -> Self {
    let targetView = isUIViewType(self.targetView)
    targetView.tintColor = tintColor
    return self
  }

  public func setTransform(_ transform: CGAffineTransform) -> Self {
    let targetView = isUIViewType(self.targetView)
    targetView.transform = transform
    return self
  }
}
