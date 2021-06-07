do it descriptions
packageCreatedDescriptionOf: anRxMatcher

	^ 'packageCreated: #', (anRxMatcher subexpression: 2)
		