updating
saveFilter: aFiltermode
	self changeList showAllChanges.
	aFiltermode notEmpty ifTrue:[ 
	aFiltermode do: [:filterMode | self changeList selectChangeRecords: [ :changeRecord | changeRecord type == filterMode ]].
	].