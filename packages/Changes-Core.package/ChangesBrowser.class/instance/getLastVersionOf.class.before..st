as yet unclassified
getLastVersionOf: aSelector class: aClass before: aStamp
	
	| changeList lastVersion |
	
	changeList := self browseVersionsSelector: aSelector class: aClass.
	lastVersion := changeList detect: [ :changeRecord | (changeRecord timeStamp) < (aStamp)].
	^ lastVersion.