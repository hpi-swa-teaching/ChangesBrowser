loading
loadImageStatesContaining: aString 
	"image states are changeRecords like ----Snapshot/Quit..."

	| recordMatched selectedImageStates changeRecords |
	self searchEnabled: true.
	recordMatched := false.
	selectedImageStates := OrderedCollection new.
	changeRecords := self imageStateListModel getWholeChangeList changeList.
	changeRecords
		reverseDo: [:record |
			recordMatched := recordMatched or: [record containsString: aString].
			record isSnapshot
				ifTrue: [recordMatched
						ifTrue: [selectedImageStates add: record].
						recordMatched := false]].
	self imageStateListModel
		positions: (selectedImageStates collect: [:imageState | imageState position]);
		list: (selectedImageStates collect: [:imageState | imageState string]);
		endPosition: (CHChangeListModel browseRecentLog at: 3)