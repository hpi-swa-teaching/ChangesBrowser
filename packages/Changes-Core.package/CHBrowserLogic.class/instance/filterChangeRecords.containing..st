loading
filterChangeRecords: anOrderedCollection containing: aString 
	"image states are changeRecords like ----Snapshot/Quit... "

	| recordMatched selectedImageStates |
	recordMatched := false.
	selectedImageStates := OrderedCollection new.
	anOrderedCollection
		reverseDo: [:record | 
						recordMatched := recordMatched or: [record containsString: aString].
						record isSnapshot
						ifTrue: [recordMatched
									ifTrue: [selectedImageStates add: record].
								recordMatched := false]].
	^ selectedImageStates