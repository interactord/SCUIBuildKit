//
// Created by Scott Moon on 2019-05-06.
// Copyright (c) 2019 Scott Moon. All rights reserved.
//

import UIKit

extension UIImage {

  func fillColor(_ color: UIColor, bounce: CGRect) -> UIImage? {
    UIGraphicsBeginImageContextWithOptions(bounce.size, false, 0)
    color.setFill()
    UIRectFill(bounce)
    let image: UIImage? = UIGraphicsGetImageFromCurrentImageContext()
    UIGraphicsEndImageContext()
    return image
  }
}
