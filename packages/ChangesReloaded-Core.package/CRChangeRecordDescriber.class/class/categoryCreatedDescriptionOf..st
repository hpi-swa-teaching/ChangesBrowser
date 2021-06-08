do it descriptions
categoryCreatedDescriptionOf: anRxMatcher

	^ 'categoryCreated: #', (anRxMatcher subexpression: 4), ' in #', (anRxMatcher subexpression: 2)