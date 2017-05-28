updating
saveFilter: aFiltermode
	self changeList showAllChanges.
	aFiltermode notEmpty ifTrue:[ 
	aFiltermode do: [:filterMode | filterMode == #snapshot ifTrue:[self changeList showSelectedSnapshotOnlyWithoutChangingTheFiltermode.]
		ifFalse: [filterMode == #doIt ifTrue: [self changeList selectChangeRecords: [ :changeRecord | changeRecord type ~~ filterMode ]]
		ifFalse: [self changeList selectChangeRecords: [ :changeRecord | changeRecord type == filterMode ]]]].
	].