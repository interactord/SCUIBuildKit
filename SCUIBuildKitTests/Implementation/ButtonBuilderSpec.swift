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
}
