//
//  LabelBuilderSpec.swift
//  SCUIBuilderKitTests
//
//  Created by Scott Moon on 06/05/2019.
//  Copyright © 2019 Scott Moon. All rights reserved.
//

import XCTest

import UIKit

@testable import SCUIBuildKit

class LabelBuilderSpec: XCTestCase {

  var sut: UILabel?

  override func setUp() {
    super.setUp()
  }

  override func tearDown() {
    super.tearDown()
    sut = nil
  }

  func test_build() {
    sut = LabelBuilder().build()
    XCTAssertNotNil(sut)
  }

  func test_setText() {
    let expectedText = "test"

    sut = LabelBuilder()
      .setText(expectedText)
      .build()

    XCTAssertEqual(expectedText, sut?.text)
  }

  func test_setTextAlignment() {
    let expectedAlignment: NSTextAlignment = .center

    sut = LabelBuilder()
      .setTextAlignment(expectedAlignment)
      .build()

    XCTAssertEqual(expectedAlignment, sut?.textAlignment)
  }

  func test_setFont() {
    let expectedFont: UIFont = .systemFont(ofSize: 20)

    sut = LabelBuilder()
      .setFont(expectedFont)
      .build()

    XCTAssertEqual(expectedFont, sut?.font)
  }

  func test_setTextColor() {
    let expectedTextColor = UIColor.cyan

    sut = LabelBuilder()
      .setTextColor(expectedTextColor)
      .build()

    XCTAssertEqual(expectedTextColor, sut?.textColor)
  }

  func test_setNumberOfLines() {
    let expectedNumberOfLines = 3

    sut = LabelBuilder()
      .setNumberOfLines(expectedNumberOfLines)
      .build()

    XCTAssertEqual(expectedNumberOfLines, sut?.numberOfLines)
  }

  func test_chaining_build() {
    let expectedText = "test"
    let expectedAlignment: NSTextAlignment = .center
    let expectedFont: UIFont = .systemFont(ofSize: 20)
    let expectedTextColor = UIColor.cyan
    let expectedNumberOfLines = 3

    sut = LabelBuilder()
      .setText(expectedText)
      .setTextAlignment(expectedAlignment)
      .setFont(expectedFont)
      .setTextColor(expectedTextColor)
      .setNumberOfLines(expectedNumberOfLines)
      .build()

    XCTAssertNotNil(sut)
    XCTAssertEqual(expectedText, sut?.text)
    XCTAssertEqual(expectedAlignment, sut?.textAlignment)
    XCTAssertEqual(expectedFont, sut?.font)
    XCTAssertEqual(expectedTextColor, sut?.textColor)
    XCTAssertEqual(expectedNumberOfLines, sut?.numberOfLines)
  }

}
