accessing
position: aNumber

	aNumber < self size 
		ifTrue: [position := aNumber]
		ifFalse: [position := self size]