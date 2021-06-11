do it descriptions
packageRenamedDescriptionOf: anRxMatcher

	^ 'packageRenamed: #', (anRxMatcher subexpression: 2), ' -> #', (anRxMatcher subexpression: 3)