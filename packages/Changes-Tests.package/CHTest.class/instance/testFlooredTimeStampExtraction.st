testing
testFlooredTimeStampExtraction

	| roundedTimeStamp extractedTimeStamp1 extractedTimeStamp2 extractedTimeStamp3 extractedTimeStamp4 |
	
	roundedTimeStamp := TimeStamp date: (Date year: 2016 month: 6 day: 19) time: (Time hour: 19 minute: 50 second: 00).
	extractedTimeStamp1 := CHBrowserLogic extractFlooredTimeStamp: '----STARTUP----{19 June 2016 . 7:50:30 pm} as D:\Paul\Desktop\SWT2016-v5\SWT2016.app\Contents\Resources\SWT2016.image'.
	extractedTimeStamp2 := CHBrowserLogic extractFlooredTimeStamp: '----QUIT----{19 June 2016 . 7:50:45 pm} as D:\Leon\Desktop\SWT2016-v5\SWT2016.app\Contents\Resources\SWT2016.image'.
	extractedTimeStamp3 := CHBrowserLogic extractFlooredTimeStamp: '----SNAPSHOT----{19 June 2016 . 7:50:00 pm} as D:\Fabian\Desktop\SWT2016-v5\SWT2016.app\Contents\Resources\SWT2016.image'.
	extractedTimeStamp4 := CHBrowserLogic extractFlooredTimeStamp: '----SNAPSHOT----{19 June 2016 . 7:51:00 pm} as D:\Fabian\Desktop\SWT2016-v5\SWT2016.app\Contents\Resources\SWT2016.image'.
	self
		assert: roundedTimeStamp equals: extractedTimeStamp1;
		assert: roundedTimeStamp equals: extractedTimeStamp2;
		assert: roundedTimeStamp equals: extractedTimeStamp3;
		deny: (roundedTimeStamp = extractedTimeStamp4)