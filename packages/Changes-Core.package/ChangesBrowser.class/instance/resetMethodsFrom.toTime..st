as yet unclassified
resetMethodsFrom: aChangeList toTime: aTimeStamp 
	
	self
		resetExistingMethods: aChangeList toTime: aTimeStamp;
		resetNotExistingMethods: aChangeList toTime: aTimeStamp.