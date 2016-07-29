resetting
resetClassesFrom: aChangeList

	| setOfAddedClasses setOfRemovedClasses |
	setOfAddedClasses := self findAddedClassesRecordsIn: aChangeList.	
	setOfRemovedClasses := self findRemovedClassesRecordsIn: aChangeList.
	self
		resetAddedClasses: setOfAddedClasses;
		resetDeletedClasses: setOfRemovedClasses