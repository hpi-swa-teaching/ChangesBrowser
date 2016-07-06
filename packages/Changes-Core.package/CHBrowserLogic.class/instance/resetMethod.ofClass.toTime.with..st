resetting
resetMethod: aSelector ofClass: aClass toTime: aTimeStamp with: methodChanges
	
	| changeRecord |
	
	changeRecord := self
				getLastVersionOf: aSelector
				class: aClass
				before: aTimeStamp
				notIn: methodChanges.
	changeRecord isNil
		ifTrue: [aClass removeSelector: aSelector]
		ifFalse: [changeRecord fileIn]