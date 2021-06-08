main
ifMatcher: anRxMatcher matches: aString do: aBlock
	
	^ (anRxMatcher matches: aString) ifTrue: [^ aBlock value: anRxMatcher]