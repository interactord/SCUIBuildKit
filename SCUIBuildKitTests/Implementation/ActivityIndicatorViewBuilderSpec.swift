//
// Created by Scott Moon on 2019-05-14.
// Copyright (c) 2019 Scott Moon. All rights reserved.
//

import XCTest
import UIKit

@testable import SCUIBuildKit

class ActivityIndicatorViewBuilderSpec: XCTestCase {
  var sut: UIActivityIndicatorView?

  override func setUp() {
    super.setUp()
  }

  override func tearDown() {
    super.tearDown()
    sut = nil
  }

  func test_setStyle() {
    let expectedStyle: UIActivityIndicatorView.Style = .whiteLarge

    sut = ActivityIndicatorViewBuilder()
      .setStyle(expectedStyle)
      .build()

    XCTAssertEqual(expectedStyle, sut?.style)
  }

  func test_setColor() {
    let expectedColor: UIColor = .red

    sut = ActivityIndicatorViewBuilder()
      .setColor(expectedColor)
      .build()

    XCTAssertEqual(expectedColor, sut?.color)
  }

  func test_setHidesWhenStopped() {

    sut = ActivityIndicatorViewBuilder()
      .setHidesWhenStopped()
      .build()

    XCTAssertTrue(sut?.hidesWhenStopped ?? false)
  }

  func test_startAnimating() {
    sut = ActivityIndicatorViewBuilder()
      .startAnimating()
      .build()

    XCTAssertTrue(sut?.isAnimating ?? false)
  }

  func test_chaining_build() {
    let expectedStyle: UIActivityIndicatorView.Style = .whiteLarge
    let expectedColor: UIColor = .red

    sut = ActivityIndicatorViewBuilder()
      .setStyle(expectedStyle)
      .setColor(expectedColor)
      .setHidesWhenStopped()
      .startAnimating()
      .build()

    XCTAssertEqual(expectedStyle, sut?.style)
    XCTAssertEqual(expectedColor, sut?.color)
    XCTAssertTrue(sut?.hidesWhenStopped ?? false)
    XCTAssertTrue(sut?.isAnimating ?? false)
  }
}
