initialize-release
initialize

	self
		selector: nil;
		affectedClass: nil;
		history: (SortedCollection sortBlock: [:aCRChangeListItem :anotherCRChangeListItem |
												aCRChangeListItem timeStamp > anotherCRChangeListItem timeStamp])