initializing
initializeMethodHistories

	| changeRecords methodHistories |
	changeRecords := Cursor read
				showWhile: [(self retreiveChangeRecordsFromChangesFile
						reject: [:each | self isInImage: each]) reversed].
	methodHistories := Dictionary new.
	changeRecords
		do: [:each | each isMethod
				ifTrue: [
					| methodSelector changeListItem |
					methodSelector := each methodSelector.
					changeListItem := CRChangeListItem new changeRecord: each.
					methodHistories
						at: methodSelector
						ifAbsentPut: [^ OrderedCollection new add: changeListItem]
						ifPresentPut: [:methodHistory | ^ methodHistory add: changeListItem]]]