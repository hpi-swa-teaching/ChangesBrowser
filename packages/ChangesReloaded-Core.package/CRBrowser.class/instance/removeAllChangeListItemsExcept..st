initialize-release
removeAllChangeListItemsExcept: aCollectionOfChangeListItems

	self changeListItems: 
		(self changeListItems select: [:each | aCollectionOfChangeListItems includes: each])