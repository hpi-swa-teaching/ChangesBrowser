accessing
selectedChangeListItems
	
	| selectedChanges |
	selectedChanges := OrderedCollection new.
	self historyList do: [:each | selectedChanges addAll: each selectedChangeListItems].
	^ selectedChanges