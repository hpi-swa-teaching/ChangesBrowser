doit descriptions
methodRemovedDescriptionOf: anRxMatcher

	^ 'methodRemoved: ', (anRxMatcher subexpression: 4), ' from ', (anRxMatcher subexpression: 2)