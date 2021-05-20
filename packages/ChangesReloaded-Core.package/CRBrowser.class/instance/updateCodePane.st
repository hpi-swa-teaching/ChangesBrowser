updating
updateCodePane

	self hasSelectedMethodChangeListItem
		ifTrue: [self contents: (self diffFromPriorSourceFor: self selectedChangeListItem string)]
		ifFalse: [
			self hasSelectedChangeListItem
				ifTrue: [self contents: self selectedChangeListItem string asText]
				ifFalse: [self contents: '' asText]
			].
	self contentsChanged