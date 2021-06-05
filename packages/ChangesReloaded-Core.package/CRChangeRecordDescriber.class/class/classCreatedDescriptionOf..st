doit descriptions
classCreatedDescriptionOf: anRxMatcher

	^ 'classCreated: ', (anRxMatcher subexpression: 2), ' in ', (anRxMatcher subexpression: 3)