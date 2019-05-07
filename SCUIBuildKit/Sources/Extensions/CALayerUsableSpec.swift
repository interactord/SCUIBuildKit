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
}
