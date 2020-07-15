initialize-release
initialize

	self
		selector: nil;
		nameOfAffectedClass: nil;
		history: (SortedCollection sortBlock: [:aCRChangeListItem :anotherCRChangeListItem |
												aCRChangeListItem timeStamp > anotherCRChangeListItem timeStamp])