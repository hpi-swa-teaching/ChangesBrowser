building
excludeIncludeButtonFrame

	^ LayoutFrame new
		leftFraction: 0 offset: 0;
		topFraction: 1 - self codePaneFraction offset: (0 - self buttonHeight);
		rightFraction: 1 offset: 0;
		bottomFraction: 1 - self codePaneFraction offset: 0