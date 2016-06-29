testing
testExactTimeStampExtraction

	| exactTimeStamp1 exactTimeStamp2 exactTimeStamp3 extractedTimeStamp1 extractedTimeStamp2 extractedTimeStamp3 |
	
	exactTimeStamp1 := TimeStamp date: (Date year: 2016 month: 6 day: 19) time: (Time hour: 19 minute: 50 second: 30).
	extractedTimeStamp1 := ChangesBrowser extractTimeStamp: '----STARTUP----{19 June 2016 . 7:50:30 pm} as D:\Paul\Desktop\SWT2016-v5\SWT2016.app\Contents\Resources\SWT2016.image'.

	exactTimeStamp2 := TimeStamp date: (Date year: 2016 month: 6 day: 19) time: (Time hour: 19 minute: 50 second: 45).
	extractedTimeStamp2 := ChangesBrowser extractTimeStamp: '----QUIT----{19 June 2016 . 7:50:45 pm} as D:\Leon\Desktop\SWT2016-v5\SWT2016.app\Contents\Resources\SWT2016.image'.

	exactTimeStamp3 := TimeStamp date: (Date year: 2016 month: 6 day: 19) time: (Time hour: 19 minute: 51 second: 00).
	extractedTimeStamp3 := ChangesBrowser extractTimeStamp: '----SNAPSHOT----{19 June 2016 . 7:51:00 pm} as D:\Fabian\Desktop\SWT2016-v5\SWT2016.app\Contents\Resources\SWT2016.image'.

	self
		assert: exactTimeStamp1 equals: extractedTimeStamp1;
		assert: exactTimeStamp2 equals: extractedTimeStamp2;
		assert: exactTimeStamp3 equals: extractedTimeStamp3.