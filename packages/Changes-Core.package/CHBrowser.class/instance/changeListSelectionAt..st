accessing
changeListSelectionAt: anIndex
	^ self changeList listSelections at: anIndex ifAbsent: [^false].