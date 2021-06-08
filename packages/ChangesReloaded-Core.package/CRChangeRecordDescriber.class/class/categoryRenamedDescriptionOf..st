do it descriptions
categoryRenamedDescriptionOf: anRxMatcher

	^ 'categoryRenamed: #', (anRxMatcher subexpression: 4), ' -> #', (anRxMatcher subexpression: 5), ' in #', (anRxMatcher subexpression: 2)