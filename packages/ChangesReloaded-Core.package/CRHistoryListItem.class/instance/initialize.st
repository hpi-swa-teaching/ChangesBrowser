initializing
initialize

	self
		selector: nil;
		class: nil;
		history: (SortedCollection sortBlock: [:aCRChangeListItem :anotherCRChangeListItem |
												aCRChangeListItem timeStamp > anotherCRChangeListItem timeStamp])