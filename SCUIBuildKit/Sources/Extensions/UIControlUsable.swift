//
// Created by Scott Moon on 2019-013-06.
// Copyright (c) 2019 Scott Moon. All rights reserved.
//


import UIKit

public protocol UIControllUsable: Builder {
func setAddTarget(_ target: Any?, selector: Selector, event: UIControl.Event) -> Self
}

extension UIControllUsable {
  public func setAddTarget(_ target: Any?, selector: Selector, event: UIControl.Event) -> Self {
    let targetView = isUIControllType(self.targetView)
    targetView.addTarget(target, action: selector, for: event)
    return self
  }
}
