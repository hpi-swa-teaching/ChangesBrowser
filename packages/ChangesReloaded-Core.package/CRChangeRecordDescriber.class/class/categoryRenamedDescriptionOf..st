doIt descriptions
categoryRenamedDescriptionOf: anRxMatcher

	^ 'categoryRenamed: ', (anRxMatcher subexpression: 2), ' ', (anRxMatcher subexpression: 4), ' -> ', (anRxMatcher subexpression: 5)