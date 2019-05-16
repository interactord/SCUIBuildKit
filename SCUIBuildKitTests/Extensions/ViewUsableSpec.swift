//
// Created by Scott Moon on 2019-05-16.
// Copyright (c) 2019 Scott Moon. All rights reserved.
//

import XCTest
import UIKit

@testable import SCUIBuildKit

class ViewUsableSpec: XCTestCase {

	var sut: UIView?

	override func setUp() {
		super.setUp()
	}

	override func tearDown() {
		super.tearDown()
		sut = nil
	}

	func test_setAlpha() {
		let expectedAlpha: CGFloat = 0.5
		sut = ViewUsableMock()
			.setAlpha(expectedAlpha)
			.build()

		XCTAssertEqual(expectedAlpha, sut?.alpha)
	}
}

