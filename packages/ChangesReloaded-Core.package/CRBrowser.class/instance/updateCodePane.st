updating
updateCodePane

	self contents: (self hasSelectedChangeListItem
		ifTrue: [self codeOfSelectedChange asText]
		ifFalse: ['']).
	
	self contentsChanged.