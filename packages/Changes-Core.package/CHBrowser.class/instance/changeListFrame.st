building
changeListFrame

	^ LayoutFrame new
		leftFraction: 0.5 offset: 0;
		topFraction: 0 offset: self buttonHeight;
		rightFraction: 1 offset: 0;
		bottomFraction: 1 - self methodWindowHeight.