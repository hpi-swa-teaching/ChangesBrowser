resetting
resetImageState: aWholeChangeList with: aChangeList

	self
		saveSnapshot;
		resetClassesFrom: aChangeList;
		resetMethods: aChangeList with: aWholeChangeList;
		refresh
