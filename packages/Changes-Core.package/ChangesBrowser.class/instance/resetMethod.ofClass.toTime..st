as yet unclassified
resetMethod: aSelector ofClass: aClass toTime: aTimeStamp 
	
	| changeRecord |
	
	changeRecord := self
				getLastVersionOf: aSelector
				class: aClass
				before: aTimeStamp.
	changeRecord isNil
		ifTrue: [aClass removeSelector: aSelector]
		ifFalse: [changeRecord fileIn]