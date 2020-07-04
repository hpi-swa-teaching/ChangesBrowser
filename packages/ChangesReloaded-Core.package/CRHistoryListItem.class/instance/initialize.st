initialize-release
initialize

	self
		selector: nil;
		className: nil;
		history: (SortedCollection sortBlock: [:aCRChangeListItem :anotherCRChangeListItem |
												aCRChangeListItem timeStamp > anotherCRChangeListItem timeStamp])