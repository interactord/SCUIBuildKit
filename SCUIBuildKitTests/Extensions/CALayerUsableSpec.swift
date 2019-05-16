//
// Created by Scott Moon on 2019-05-07.
// Copyright (c) 2019 Scott Moon. All rights reserved.
//

import XCTest

import UIKit
@testable import SCUIBuildKit

class CALayerUsableSpec: XCTestCase {

  var sut: UIView?

  override func setUp() {
    super.setUp()
  }

  override func tearDown() {
    super.tearDown()
    sut = nil
  }

  func test_setCornerRadius() {
    let expectedRadius: CGFloat = 16.0

    sut = CALayerUsableMock()
      .setCornerRadius(expectedRadius)
      .build()

    XCTAssertEqual(expectedRadius, sut?.layer.cornerRadius)
  }

  func test_setBorderWidth() {
    let expectedBorderWidth: CGFloat = 3.0

    sut = CALayerUsableMock()
      .setBorderWidth(expectedBorderWidth)
      .build()

    XCTAssertEqual(expectedBorderWidth, sut?.layer.borderWidth)
  }

  func test_setBorderColor() {
    let expectedBorderColor: CGColor = UIColor.red.cgColor

    sut = CALayerUsableMock()
      .setBorderColor(expectedBorderColor)
      .build()

    XCTAssertEqual(expectedBorderColor, sut?.layer.borderColor)
  }

  func test_setShadowOffset() {
    let expectedOffset = CGSize(width: 1, height: 1)

    sut = CALayerUsableMock()
      .setShadowOffset(expectedOffset)
      .build()

    XCTAssertEqual(expectedOffset, sut?.layer.shadowOffset)
  }

  func test_setShadowColor() {
    let expectedColor = UIColor.red.cgColor

    sut = CALayerUsableMock()
      .setShadowColor(expectedColor)
      .build()

    XCTAssertEqual(expectedColor, sut?.layer.shadowColor)
  }

  func test_setShadowOpacity() {
    let expectedOpacity: Float = 0.5

    sut = CALayerUsableMock()
      .setShadowOpacity(expectedOpacity)
      .build()

    XCTAssertEqual(expectedOpacity, sut?.layer.shadowOpacity)
  }

  func test_setShadowRadius() {
    let expectedRadius: CGFloat = 1.2

    sut = CALayerUsableMock()
      .setShadowRadius(expectedRadius)
      .build()

    XCTAssertEqual(expectedRadius, sut?.layer.shadowRadius)
  }

  func test_setShouldRasterize() {
    let expectedRasterize = true

    sut = CALayerUsableMock()
      .setShouldRasterize(expectedRasterize)
      .build()

    XCTAssertEqual(expectedRasterize, sut?.layer.shouldRasterize)
  }

}
