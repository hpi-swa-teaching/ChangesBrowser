utility
if: aMatcher matches: aString do: aBlock
	
	^ (aMatcher matches: aString) 
		ifTrue: [^ aBlock value: aMatcher]