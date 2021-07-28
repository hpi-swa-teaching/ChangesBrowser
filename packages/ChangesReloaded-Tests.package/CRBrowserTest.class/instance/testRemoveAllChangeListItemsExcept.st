testing-functionality
testRemoveAllChangeListItemsExcept

	| newMockChanges changeListItemsToKeep |
	newMockChanges := CRBrowser getChangeListItemsMissingInImageFrom: 
									CRFakeFileStream mockChangesFileStream.
	changeListItemsToKeep := OrderedCollection new.
	changeListItemsToKeep
		add: newMockChanges second;
		add: newMockChanges fifth.

	self changesBrowser removeAllChangeListItemsExcept: changeListItemsToKeep.
	
	self assert: self changesBrowser changeListItems = changeListItemsToKeep