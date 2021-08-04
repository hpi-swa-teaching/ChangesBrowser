button-actions
chooseVersionsInGroup

	self hasSelectedGroup ifFalse: [^ self].
	self selectedGroup pickAt: self versionIndex.
	self changedPickStatus