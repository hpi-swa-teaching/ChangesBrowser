doit descriptions
categoryRenamedDescriptionOf: anRxMatcher

	^ 'categoryRenamed: ', (anRxMatcher subexpression: 2), ' ', (anRxMatcher subexpression: 3), ' -> ', (anRxMatcher subexpression: 4)