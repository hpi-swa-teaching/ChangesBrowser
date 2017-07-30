buttonActions
getChangeRecords: anOrderedCollection containing: aString 

	| recordMatched selectedImageStates |
	recordMatched := false.
	selectedImageStates := OrderedCollection new.
	anOrderedCollection
		reverseDo: [:record | 
						recordMatched := recordMatched or: [record containsString: aString].
						(record isSnapshot and: [recordMatched])
						ifTrue: [selectedImageStates add: record. 
								recordMatched := false.].].
	^ selectedImageStates