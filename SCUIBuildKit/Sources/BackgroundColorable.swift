//
// Created by Scott Moon on 2019-05-06.
// Copyright (c) 2019 Scott Moon. All rights reserved.
//

import UIKit

public protocol BackgroundColorable: Builder {
  func setBackgroundColor(_ color: UIColor) -> Self
}

extension BackgroundColorable {
  public func setBackgroundColor(_ color: UIColor) -> Self {
    let targetView = isUIViewType(self.targetView)
    targetView.backgroundColor = color
    return self
  }
}
