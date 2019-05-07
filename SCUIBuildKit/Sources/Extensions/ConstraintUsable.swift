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

extension ConstraintUsable {
  func setWidthAnchor(_ width: CGFloat) -> Self {
    let targetView = isUIViewType(self.targetView)
    targetView.widthAnchor.constraint(equalToConstant: width).isActive = true
    return self
  }

  func setHeightAnchor(_ height: CGFloat) -> Self {
    let targetView = isUIViewType(self.targetView)
    targetView.heightAnchor.constraint(equalToConstant: height).isActive = true
    return self
  }
}
