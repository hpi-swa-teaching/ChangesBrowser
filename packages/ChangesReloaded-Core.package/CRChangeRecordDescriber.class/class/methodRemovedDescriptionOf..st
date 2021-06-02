descriptions
methodRemovedDescriptionOf: anRxMatcher
	^ 'methodRemoved: ', (anRxMatcher subexpression: 2), ' ', (anRxMatcher subexpression: 3)