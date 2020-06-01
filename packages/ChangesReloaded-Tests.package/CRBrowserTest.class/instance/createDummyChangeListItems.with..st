running
createDummyChangeListItems: anInteger with: aBoolean

	| dummyChangeRecords changeListItems |
	changeListItems := (OrderedCollection new: anInteger).
	dummyChangeRecords := #(createChangeRecordMethod new,
											createChangeRecordClassComment new).
	
	1 to: anInteger do: [:each |
		| index record |
		index := each \\\ dummyChangeRecords size + 1.
		record := dummyChangeRecords at: index.
		
		changeListItems
			add: (CRChangeListItem new
				changeRecord: record;
				isSelected: aBoolean)].
	
	^ changeListItems