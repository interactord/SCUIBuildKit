//
// Created by Scott Moon on 2019-05-07.
// Copyright (c) 2019 Scott Moon. All rights reserved.
//

import UIKit

@testable import SCUIBuildKit

class ConstraintUsableMock: ConstraintUsable {
	var targetView: UIView

	init() {
		targetView = UIView()
	}
}
