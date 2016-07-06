resetting
resetToTime: aTimeStamp with: aChangeList

	self
		resetClassesFrom: aChangeList;
		resetMethodsFrom: aChangeList toTime: aTimeStamp.
