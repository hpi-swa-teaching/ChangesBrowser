toolbuilder
changeListFrame

	^ LayoutFrame new
		leftFraction: 0 offset: 0;
		topFraction: 0 offset: self buttonHeight;
		rightFraction: 1 offset: 0;
		bottomFraction: 1 - self codePaneFraction offset: self buttonHeight negated;
		yourself