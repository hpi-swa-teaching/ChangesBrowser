updating
applyFilter
	|filterModes|

	filterModes := self filterMode.
	"We need to show the whole list again so we can reselect!"
	self changeList showAllChanges.
	filterModes notEmpty ifTrue:[ self changeList selectChangeRecordsForMultiple: filterModes.]
