as yet unclassified
loadImageStatesContaining: aString
	"image states are changeRecords like ----Snapshot/Quit..."
	| recordMatched selectedImageStates changeRecords |
	self searchEnabled: true.
	recordMatched := false.
	selectedImageStates := OrderedCollection new.
	changeRecords := self imageStateListModel getWholeChangeList changeList.
	changeRecords reverseDo:
	[ :record |
		record isSnapshot 
			ifTrue: [
				recordMatched ifTrue: [selectedImageStates add: record].
				recordMatched := false]
			ifFalse: [
				(recordMatched not and: [record string includesSubstring: aString])
					ifTrue: [recordMatched := true]]].

	self imageStateListModel 
		positions: (selectedImageStates collect: [ :imageState | imageState position ]);
		list: (selectedImageStates collect: [ :imageState | imageState string ]);
		endPosition: (CHChangeListModel browseRecentLog at: 3).