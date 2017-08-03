filtering
applyFilter

	self changeList showAllChanges.
	self filterMode notEmpty ifTrue:[ self changeList selectChangeRecordsForMultiple: self filterMode.]
