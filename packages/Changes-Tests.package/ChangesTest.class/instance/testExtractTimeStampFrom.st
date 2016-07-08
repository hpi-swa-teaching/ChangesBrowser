testing
testExtractTimeStampFrom
|timeStamp3 timeStamp1 timeStamp2 givenTimeStamp1 givenTimeStamp2 givenTimeStamp3|
self loadFifthChangeFile.

givenTimeStamp1 := TimeStamp date: (Date year: 2016 month: 7 day: 6) time: (Time hour: 14 minute: 42 second: 55).
givenTimeStamp2 := nil.
givenTimeStamp3 := TimeStamp date: (Date year: 2016 month: 7 day: 6) time: (Time hour: 14 minute: 43 second: 00).

timeStamp1 := CHBrowserLogic extractTimeStampFrom: (self changesBrowser browserLogic imageStateListModel getWholeChangeList changeList first).
timeStamp2 := CHBrowserLogic extractTimeStampFrom: (self changesBrowser browserLogic imageStateListModel  getWholeChangeList changeList second).
timeStamp3 := CHBrowserLogic extractTimeStampFrom: (self changesBrowser browserLogic imageStateListModel  getWholeChangeList changeList third).

self 
	assert: timeStamp1 equals: givenTimeStamp1;
	assert: timeStamp2 equals: givenTimeStamp2;
	assert: timeStamp3 equals: givenTimeStamp3.