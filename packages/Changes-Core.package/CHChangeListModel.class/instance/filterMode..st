accessing
filterMode: anObject
	filterMode := anObject.
	"deselect all"
	self listIndex: 0.
	1 to: displayList size do: [ :i | self listSelectionAt: i put: false].
	self buildNewDisplayList.