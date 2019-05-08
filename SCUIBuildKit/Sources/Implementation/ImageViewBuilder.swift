//
// Created by Scott Moon on 2019-05-06.
// Copyright (c) 2019 Scott Moon. All rights reserved.
//

import UIKit

public struct ImageViewBuilder: Builder, CALayerUsable, BackgroundColorable, ConstraintUsable {
  public private(set) var targetView: UIImageView

  public init() {
    targetView = UIImageView()
  }

  public func setImage(_ image: UIImage?) -> ImageViewBuilder {
    targetView.image = image
    return self
  }

  public func setClipToBounds(_ clipToBounds: Bool) -> ImageViewBuilder {
    targetView.clipsToBounds = clipToBounds
    return self
  }

  public func setContentMode(_ mode: UIView.ContentMode) -> ImageViewBuilder {
    targetView.contentMode = mode
    return self
  }
}
