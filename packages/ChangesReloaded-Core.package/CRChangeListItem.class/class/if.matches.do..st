categories & attributes
if: anMatcher matches: aString do: aBlock
	
	^ (anMatcher matches: aString) ifTrue: [^ aBlock value: anMatcher]