//
// Created by Scott Moon on 2019-05-07.
// Copyright (c) 2019 Scott Moon. All rights reserved.
//

import XCTest
import UIKit

@testable import SCUIBuildKit

class ConstraintUsableSpec: XCTestCase {

  var sut: UIView?

  override func setUp() {
    super.setUp()
  }

  override func tearDown() {
    super.tearDown()
    sut = nil
  }

  func test_setWidthAnchor() {
    let width: CGFloat = 30

    sut = ConstraintUsableMock()
      .setWidthAnchor(width)
      .build()
  }

  func test_setHeightAnchor() {
    let height: CGFloat = 30

    sut = ConstraintUsableMock()
      .setHeightAnchor(height)
      .build()
  }
}
