//
// Created by Scott Moon on 2019-05-07.
// Copyright (c) 2019 Scott Moon. All rights reserved.
//

import XCTest

import UIKit

@testable import SCUIBuildKit

class BackgroundColorableSpec: XCTestCase {
	var sut: UIView?

	override func setUp() {
		super.setUp()
	}

	override func tearDown() {
		super.tearDown()
		sut = nil
	}

	func test_setBackgroundColor() {

		let expectedColor = UIColor.red
		sut = BackgroundColorableMock()
			.setBackgroundColor(expectedColor)
			.build()

		XCTAssertEqual(expectedColor, sut?.backgroundColor)
	}
}