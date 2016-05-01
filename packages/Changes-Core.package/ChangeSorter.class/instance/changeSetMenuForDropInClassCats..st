changeSet menu
changeSetMenuForDropInClassCats: aMenu
	
	aMenu add: 'remove contained in class categories...' action: #removeContainedInClassCategories.
	aMenu balloonTextForLastItem: ' Drops any changes in given class categories'.

	^ aMenu
