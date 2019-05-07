//
// Created by Scott Moon on 2019-05-06.
// Copyright (c) 2019 Scott Moon. All rights reserved.
//

import XCTest

import UIKit

@testable import SCUIBuildKit

class ImageViewBuilderSpec: XCTestCase {

  var sut: UIImageView?

  override func setUp() {
    super.setUp()
  }

  override func tearDown() {
    super.tearDown()
    sut = nil
  }

  func test_setImage() {
    let expectedImage = UIImage().fillColor(.red, bounce: .init(origin: .zero, size: .init(width: 40, height: 40)))

    sut = ImageViewBuilder()
      .setImage(expectedImage)
      .build()

    XCTAssertNotNil(sut?.image)
    XCTAssertEqual(expectedImage, sut?.image)
  }

  func test_setClipToBounds() {
    let expectedClipToBounds = true

    sut = ImageViewBuilder()
      .setClipToBounds(expectedClipToBounds)
      .build()

    XCTAssertEqual(expectedClipToBounds, sut?.clipsToBounds)
  }

  func test_extension_mergedAlpha() {
    var expectedImage = UIImage().fillColor(.red, bounce: .init(origin: .zero, size: .init(width: 40, height: 40)))
    expectedImage = expectedImage?.mergedAlpha(0.3)

    sut = ImageViewBuilder()
      .setImage(expectedImage)
      .build()

    XCTAssertNotNil(sut?.image)
    XCTAssertEqual(expectedImage, sut?.image)
  }

  func test_chaining_build() {
    let expectedImage = UIImage().fillColor(.red, bounce: .init(origin: .zero, size: .init(width: 40, height: 40)))
    let expectedClipToBounds = true

    sut = ImageViewBuilder()
      .setImage(expectedImage)
      .setClipToBounds(expectedClipToBounds)
      .build()

    XCTAssertNotNil(sut?.image)
    XCTAssertEqual(expectedImage, sut?.image)
    XCTAssertEqual(expectedClipToBounds, sut?.clipsToBounds)

  }
}
