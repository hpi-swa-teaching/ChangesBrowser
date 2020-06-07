accessing
changeDescriptionsFor: aSymbol

	^ (self changeListItemsFor: aSymbol) collect: [:each | each changeRecord text]