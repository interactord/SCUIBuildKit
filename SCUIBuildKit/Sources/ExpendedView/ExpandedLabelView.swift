//
//  LableView.swift
//  SCUIBuildKit
//
//  Created by Scott Moon on 03/07/2019.
//  Copyright © 2019 Scott Moon. All rights reserved.
//

import UIKit

public class ExpandedLabelView: UILabel {
  public var contentInsets = UIEdgeInsets.zero

  override public func drawText(in rect: CGRect) {
    let insetRect = rect.inset(by: contentInsets)
    super.drawText(in: insetRect)
  }

  override public func sizeThatFits(_ size: CGSize) -> CGSize {
    return addInsets(to: super.sizeThatFits(size))
  }

  private func addInsets(to size: CGSize) -> CGSize {
    let width = size.width + contentInsets.left + contentInsets.right
    let height = size.height + contentInsets.top + contentInsets.bottom
    return CGSize(width: width, height: height)
  }
}

