//
// Created by Scott Moon on 2019-05-16.
// Copyright (c) 2019 Scott Moon. All rights reserved.
//

import XCTest
import UIKit

@testable import SCUIBuildKit

class ViewBuilderSpec: XCTestCase {
	var sut: UIView?

	override func setUp() {
		super.setUp()
	}

	override func tearDown() {
		super.tearDown()
		sut = nil
	}

	func test_init() {
		sut = ViewBuilder()
			.build()

		XCTAssertNotNil(sut)
	}
}
