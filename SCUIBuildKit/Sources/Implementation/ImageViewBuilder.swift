//
// Created by Scott Moon on 2019-05-06.
// Copyright (c) 2019 Scott Moon. All rights reserved.
//

import UIKit

struct ImageViewBuilder: Builder, CALayerUsable {
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
}
