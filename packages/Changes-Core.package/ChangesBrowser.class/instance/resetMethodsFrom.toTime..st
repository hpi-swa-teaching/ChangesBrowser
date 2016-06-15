resetting
resetMethodsFrom: aChangeList toTime: aTimeStamp 
	
	self
		resetExistingMethods: aChangeList;
		resetNotExistingMethods: aChangeList toTime: aTimeStamp.