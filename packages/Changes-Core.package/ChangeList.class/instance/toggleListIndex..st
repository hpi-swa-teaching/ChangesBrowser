viewing access
toggleListIndex: newListIndex

	self listIndex ~= 0 ifTrue: [self listSelections at: self listIndex put: false].
	newListIndex ~= 0 ifTrue: [self listSelections at: newListIndex put: true].
	self listIndex: newListIndex.
	self changed: #listIndex.
	self contentsChanged