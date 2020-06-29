accessing
selectedChangeListItems
	
	| selectedChanges |
	selectedChanges := SortedCollection new.
	self historyList do: [:each | selectedChanges addAll: each selectedChangeListItems].
	^ selectedChanges