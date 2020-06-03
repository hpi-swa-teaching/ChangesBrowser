mocking
createDummyChangeListItems: anInteger withSelection: aBoolean

	| dummyChangeRecords changeListItems |
	changeListItems := OrderedCollection new: anInteger.
	dummyChangeRecords := (OrderedCollection new: 2)
		add: self createChangeRecordMethod;
		add: self createChangeRecordClassComment;
		yourself.
	
	1 to: anInteger do: [:each |
		| index record |
		index := each \\\ dummyChangeRecords size + 1.
		record := dummyChangeRecords at: index.
		
		changeListItems
			add: (CRChangeListItem new
				changeRecord: record;
				isSelected: aBoolean)].
	
	^ changeListItems