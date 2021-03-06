//
// Created by Scott Moon on 2019-05-07.
// Copyright (c) 2019 Scott Moon. All rights reserved.
//

import XCTest
import UIKit

@testable import SCUIBuildKit

class ButtonBuilderSpec: XCTestCase {
  var sut: UIButton?

  override func setUp() {
    super.setUp()
  }

  override func tearDown() {
    super.tearDown()
    sut = nil
  }

  func test_setTitle() {
    let expectedTitle = "Test"

    sut = ButtonBuilder()
      .setTitle("Test")
      .build()

    XCTAssertEqual(expectedTitle, sut?.titleLabel?.text)
  }

  func test_setFont() {

    let expectedFont = UIFont.systemFont(ofSize: 20)
    sut = ButtonBuilder()
      .setFont(expectedFont)
      .build()

    XCTAssertEqual(expectedFont, sut?.titleLabel?.font)
  }

  func test_setTitleColor() {
    let expectedColor = UIColor.red

    sut = ButtonBuilder()
      .setTitleColor(expectedColor)
      .build()
  }

  func test_setImage() {
    let expectedImage = UIImage().fillColor(.red, bounce: .init(origin: .zero, size: .init(width: 40, height: 40)))

    sut = ButtonBuilder()
      .setImage(expectedImage)
      .build()
  }

  func test_setBackgroundImage() {
    let expectedImage = UIImage().fillColor(.red, bounce: .init(origin: .zero, size: .init(width: 40, height: 40)))

    sut = ButtonBuilder()
      .setBackgroundImage(expectedImage)
      .build()
  }

  func test_setTag() {
    let exptectedTag: Int = 1_000

    sut = ButtonBuilder()
      .setTag(exptectedTag)
      .build()

    XCTAssertEqual(exptectedTag, sut?.tag)
  }

  func test_setContentEdgeInsets() {
    let expectedEdge: UIEdgeInsets = .init(top: 10, left: 10, bottom: 10, right: 10)

    sut = ButtonBuilder()
      .setContentEdgeInsets(expectedEdge)
      .build()

    XCTAssertEqual(expectedEdge, sut?.contentEdgeInsets)
  }

  func test_setWidthAnchorSizeToFit() {
    let edge: UIEdgeInsets = .init(top: 10, left: 10, bottom: 10, right: 10)

    sut = ButtonBuilder()
      .setContentEdgeInsets(edge)
      .setWidthAnchorSizeToFit()
      .build()

    XCTAssertEqual(edge.left + edge.right, sut?.frame.width)
  }
}
