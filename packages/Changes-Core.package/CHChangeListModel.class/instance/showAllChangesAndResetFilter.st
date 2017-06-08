filtering
showAllChangesAndResetFilter
	|CHlogic|
	CHlogic := self dependents at: 1.
	CHlogic filterMode: CHlogic initializeFiltersToOn.
	self displayedIndexList: (1 to: self fullChangeStringList size).