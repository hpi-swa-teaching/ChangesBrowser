doit descriptions
categoryRemovedDescriptionOf: anRxMatcher

	^ 'categoryRemoved: ', (anRxMatcher subexpression: 4), ' from ', (anRxMatcher subexpression: 2)