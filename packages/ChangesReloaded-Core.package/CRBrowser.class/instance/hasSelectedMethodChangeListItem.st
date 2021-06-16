accessing
hasSelectedMethodChangeListItem
	
	^ self hasSelectedChangeListItem and: [self selectedChangeListItem type == #method]