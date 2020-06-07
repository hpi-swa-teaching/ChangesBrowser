accessing
changeListItemsFor: aSymbol

	^ self methodHistories at: aSymbol ifAbsent: [OrderedCollection new]