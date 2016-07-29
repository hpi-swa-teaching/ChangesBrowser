loading
loadImageStatesContaining: aString 
	"image states are changeRecords like ----Snapshot/Quit..."

	| selectedImageStates wholeChanges |
	self searchEnabled: true.
	wholeChanges := self imageStateListModel getWholeChangeList changeList.
	selectedImageStates := self getChangeRecords: wholeChanges containing: aString.
	self imageStateListModel
		positions: (selectedImageStates collect: [:imageState | imageState position]);
		list: (selectedImageStates collect: [:imageState | imageState string]);
		endPosition: (CHChangeListModel browseRecentLog at: 3)