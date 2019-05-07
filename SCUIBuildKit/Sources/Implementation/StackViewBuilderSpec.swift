//
// Created by Scott Moon on 2019-05-08.
// Copyright (c) 2019 Scott Moon. All rights reserved.
//

import XCTest

import UIKit

@testable import SCUIBuildKit

class StackViewBuilderSpec: XCTestCase {

	var sut: UIStackView?

	override func setUp() {
		super.setUp()
	}

	override func tearDown() {
		super.tearDown()
		sut = nil
	}

	func test_setAlignment() {

		let expectedAlignment: UIStackView.Alignment = .center

		sut = StackViewBuilder(arrangedSubViews: [UIView()])
			.setAlignment(expectedAlignment)
			.build()

		XCTAssertEqual(expectedAlignment, sut?.alignment)
	}

	func test_setAxis() {
		let expectedAxis: NSLayoutConstraint.Axis = .vertical

		sut = StackViewBuilder(arrangedSubViews: [UIView()])
			.setAxis(expectedAxis)
			.build()

		XCTAssertEqual(expectedAxis, sut?.axis)
	}

	func test_setDistribution() {
		let expectedDistribution: UIStackView.Distribution = .fillEqually

		sut = StackViewBuilder(arrangedSubViews: [UIView()])
			.setDistribution(expectedDistribution)
			.build()

		XCTAssertEqual(expectedDistribution, sut?.distribution)
	}

	func test_setSpacing() {
		let expectedSpacing: CGFloat = 10.0

		sut = StackViewBuilder(arrangedSubViews: [UIView()])
			.setSpacing(expectedSpacing)
			.build()

		XCTAssertEqual(expectedSpacing, sut?.spacing)
	}

	func test_chaining_build() {
		let expectedAlignment: UIStackView.Alignment = .center
		let expectedAxis: NSLayoutConstraint.Axis = .vertical
		let expectedDistribution: UIStackView.Distribution = .fillEqually
		let expectedSpacing: CGFloat = 10.0

		sut = StackViewBuilder(arrangedSubViews: [UIView()])
			.setAlignment(expectedAlignment)
			.setAxis(expectedAxis)
			.setDistribution(expectedDistribution)
			.setSpacing(expectedSpacing)
			.build()

		XCTAssertEqual(expectedAlignment, sut?.alignment)
		XCTAssertEqual(expectedAxis, sut?.axis)
		XCTAssertEqual(expectedDistribution, sut?.distribution)
		XCTAssertEqual(expectedSpacing, sut?.spacing)
	}
}
