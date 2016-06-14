as yet unclassified
getLastVersionOf: aSelector class: aClass before: aStamp notIn: methodChanges
	
	| changeList lastVersion priorChanges |
	
	priorChanges := methodChanges collect: [:changeRecord | changeRecord prior].
	changeList := self browseVersionsSelector: aSelector class: aClass.
	changeList = 0 ifTrue: [^nil.].
	self halt.
	lastVersion := changeList detect: [ :changeRecord | ((changeRecord timeStamp) < (aStamp) or: [(changeRecord timeStamp) = (aStamp)]) and: [(priorChanges includes: changeRecord prior) not]] ifNone: [^nil].
	^ lastVersion.