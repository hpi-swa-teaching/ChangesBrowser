doit descriptions
classRenamedDescriptionOf: anRxMatcher

	^ 'classRenamed: ', (anRxMatcher subexpression: 2), ' -> ', (anRxMatcher subexpression: 3)