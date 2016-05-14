menu actions
selectAll
	self listIndex: 0.
	self listSelections atAllPut: true.
	self changed: #allSelections