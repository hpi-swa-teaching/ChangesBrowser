as yet unclassified
getLastVersionOf: aSelector class: aClass before: aStamp
	
	| changeList lastVersion |
	
	changeList := self browseVersionsSelector: aSelector class: aClass.
	changeList = 0 ifTrue: [^nil.].
	lastVersion := changeList detect: [ :changeRecord | (changeRecord timeStamp) < (aStamp)] ifNone: [^nil].
	^ lastVersion.