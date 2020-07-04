initialize-release
initialize

	self
		selector: nil;
		classNameOfChanges: nil;
		history: (SortedCollection sortBlock: [:aCRChangeListItem :anotherCRChangeListItem |
												aCRChangeListItem timeStamp > anotherCRChangeListItem timeStamp])