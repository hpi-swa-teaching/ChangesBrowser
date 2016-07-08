resetting
resetImageState: aWholeChangeList with: aChangeList

	self saveSnapshot.
	
	self resetClassesFrom: aChangeList.
	self resetMethods: aChangeList with: aWholeChangeList.
	
	self refresh.
