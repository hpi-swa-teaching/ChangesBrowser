testing
testTimeStampExtraction

	| roundedTimeStamp exactTimeStamp1 exactTimeStamp2 exactTimeStamp3 extractedTimeStamp1 extractedTimeStamp2 extractedTimeStamp3 extractedTimeStamp4 extractedTimeStamp5 extractedTimeStamp6 |
	
	roundedTimeStamp := TimeStamp date: (Date year: 2016 month: 6 day: 19) time: (Time hour: 19 minute: 51 second: 00).
	extractedTimeStamp1 := ChangesBrowser extractCeiledTimeStamp: '----STARTUP----{19 June 2016 . 7:50:30 pm} as D:\Paul\Desktop\SWT2016-v5\SWT2016.app\Contents\Resources\SWT2016.image'.
	extractedTimeStamp2 := ChangesBrowser extractCeiledTimeStamp: '----QUIT----{19 June 2016 . 7:50:45 pm} as D:\Leon\Desktop\SWT2016-v5\SWT2016.app\Contents\Resources\SWT2016.image'.
	extractedTimeStamp3 := ChangesBrowser extractCeiledTimeStamp: '----SNAPSHOT----{19 June 2016 . 7:51:00 pm} as D:\Fabian\Desktop\SWT2016-v5\SWT2016.app\Contents\Resources\SWT2016.image'.
	self
		assert: roundedTimeStamp equals: extractedTimeStamp1;
		assert: roundedTimeStamp equals: extractedTimeStamp2;
		assert: roundedTimeStamp equals: extractedTimeStamp3.
		
	exactTimeStamp1 := TimeStamp date: (Date year: 2016 month: 6 day: 19) time: (Time hour: 19 minute: 50 second: 30).
	exactTimeStamp2 := TimeStamp date: (Date year: 2016 month: 6 day: 19) time: (Time hour: 19 minute: 50 second: 45).
	exactTimeStamp3 := TimeStamp date: (Date year: 2016 month: 6 day: 19) time: (Time hour: 19 minute: 51 second: 00).
	extractedTimeStamp4 := ChangesBrowser extractTimeStamp: '----STARTUP----{19 June 2016 . 7:50:30 pm} as D:\Paul\Desktop\SWT2016-v5\SWT2016.app\Contents\Resources\SWT2016.image'.
	extractedTimeStamp5 := ChangesBrowser extractTimeStamp: '----QUIT----{19 June 2016 . 7:50:45 pm} as D:\Leon\Desktop\SWT2016-v5\SWT2016.app\Contents\Resources\SWT2016.image'.
	extractedTimeStamp6 := ChangesBrowser extractTimeStamp: '----SNAPSHOT----{19 June 2016 . 7:51:00 pm} as D:\Fabian\Desktop\SWT2016-v5\SWT2016.app\Contents\Resources\SWT2016.image'.
	self
		assert: exactTimeStamp1 equals: extractedTimeStamp4;
		assert: exactTimeStamp2 equals: extractedTimeStamp5;
		assert: exactTimeStamp3 equals: extractedTimeStamp6.