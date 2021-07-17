updating
updateCodePane

	self contents: (self hasChanges
		ifTrue: [self hasSelectedChangeListItem
			ifTrue: [self codeOfSelectedChange asText]
			ifFalse: ['']]
		ifFalse: [self noChangesInfoString]).
	
	self contentsChanged.