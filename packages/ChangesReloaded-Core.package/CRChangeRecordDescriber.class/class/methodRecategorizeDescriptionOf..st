doit descriptions
methodRecategorizeDescriptionOf: anRxMatcher

	^ 'methodRecategorize: ', (anRxMatcher subexpression: 4), ' to ', (anRxMatcher subexpression: 5)