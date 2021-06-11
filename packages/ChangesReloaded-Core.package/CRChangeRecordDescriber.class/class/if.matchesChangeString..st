main
if: anMatcher matchesChangeString: aBlock
	
	^ (anMatcher matches: self changeString) ifTrue: [^ aBlock value: anMatcher]