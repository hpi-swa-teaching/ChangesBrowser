toolbuilder
groupListFrame

	^ LayoutFrame new
		leftFraction: 0 offset: 0;
		topFraction: 0 offset: self buttonHeight;
		rightFraction: 0.5 offset: 0;
		bottomFraction: 1 - self codePaneFraction offset: self buttonHeight negated;
		yourself