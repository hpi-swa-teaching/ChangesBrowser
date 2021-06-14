do it descriptions
classMovedDescriptionOf: anRxMatcher

	^ 'classMoved: #', (anRxMatcher subexpression: 2), ' to #', (anRxMatcher subexpression: 3)