do it descriptions
categoryRemovedDescriptionOf: anRxMatcher

	^ 'categoryRemoved: #', (anRxMatcher subexpression: 4), ' in #', (anRxMatcher subexpression: 2)