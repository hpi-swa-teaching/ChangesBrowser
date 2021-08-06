button-actions
pickButtonClicked
	
	self hasSelectedGroup 
		ifFalse: [^ self].
	self versionIndex isZero
		ifTrue: [self selectedGroup unpickAll.]
		ifFalse: [self selectedGroup chooseVersionAt: self versionIndex.].
	self changedPickStatus.