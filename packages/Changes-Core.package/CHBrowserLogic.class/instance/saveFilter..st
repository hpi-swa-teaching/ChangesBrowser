updating
saveFilter: filterModes
	"deprecated, please use applyFilter"
	"self changeList showAllChanges."
	self deprecated: 'deprecated, use applyFilter '.
	changeList showAllChanges.
	filterModes notEmpty ifTrue:[ self changeList selectChangeRecordsForMultiple: filterModes.]
	ifFalse: [changeList showAllChanges].
	"filterModes do: [:filterMode | filterMode == #snapshot ifTrue:[self changeList showSelectedSnapshotOnlyWithoutChangingTheFiltermode.]
		ifFalse: [filterMode == #doIt ifTrue: [self changeList selectChangeRecords: [ :changeRecord | changeRecord type ~~ filterMode ]]
		ifFalse: [self changeList selectChangeRecords: [ :changeRecord | changeRecord type == filterMode ]]]].
	]."
