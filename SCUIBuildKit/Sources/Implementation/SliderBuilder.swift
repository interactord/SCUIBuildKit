//
//  SliderBuilder.swift
//  SCUIBuildKit
//
//  Created by Scott Moon on 11/06/2019.
//  Copyright © 2019 Scott Moon. All rights reserved.
//

import UIKit

public struct SliderBuider: Builder, ConstraintUsable, ViewUsable, UIControllUsable {

  public var targetView: UISlider

  public init() {
    targetView = UISlider()
  }

  public func setValue(_ value: Float = 0.0, maxValue: Float = 1.0, minValue: Float = 0.0) -> SliderBuider {
    targetView.value = value
    targetView.minimumValue = minValue
    targetView.maximumValue = maxValue
    return self
  }

  public func setValueImage(minImage: UIImage? = nil, maxImage: UIImage? = nil) -> SliderBuider {
    targetView.minimumValueImage = minImage
    targetView.maximumValueImage = maxImage
    return self
  }

  public func setTintTrack(minTrackTintColor: UIColor = .clear, maxTrackTintColor: UIColor = .clear, thumbTintColor: UIColor = .clear) -> SliderBuider {
    targetView.minimumTrackTintColor = minTrackTintColor
    targetView.maximumTrackTintColor = maxTrackTintColor
    targetView.thumbTintColor = thumbTintColor
    return self
  }
}
