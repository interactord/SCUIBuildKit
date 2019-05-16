//
// Created by Scott Moon on 2019-05-16.
// Copyright (c) 2019 Scott Moon. All rights reserved.
//

import UIKit

@testable import SCUIBuildKit

class ViewUsableMock: ViewUsable {
	var targetView: UIView

	init() {
		targetView = UIView()
	}
}
