as yet unclassified
resetToTime: aTimeStamp with: aChangeList

	self
		resetClassesFrom: aChangeList;
		resetMethodsFrom: aChangeList toTime: aTimeStamp.
