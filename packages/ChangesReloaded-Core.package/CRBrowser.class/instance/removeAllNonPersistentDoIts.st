initialize-release
removeAllNonPersistentDoIts

	self changeListItems: 
		(self changeListItems reject: [:each | each category = #nonPersistentDoIt])