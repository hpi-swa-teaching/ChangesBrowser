mock objects
mockV4
	
	^ CHFakeFileStream new string:  '

----SNAPSHOT----{6 July 2016 . 2:41:33 pm} SWT2016.image priorSource: 16761105!
!ChangesDummyClass methodsFor: ''dummyFunctions'' stamp: ''FS 7/6/2016 14:41''!
dummyFunction11
	^ ''version 1''! !
!ChangesDummyClass methodsFor: ''dummyFunctions'' stamp: ''FS 7/6/2016 14:41''!
dummyFunction12
	^ ''version 1''! !
!ChangesDummyClass methodsFor: ''dummyFunctions'' stamp: ''FS 7/6/2016 14:41''!
dummyFunction13
	^ ''version 1''! !
!ChangesDummyClass methodsFor: ''dummyFunctions'' stamp: ''FS 7/6/2016 14:42''!
dummyFunction14
	^ ''version 1''! !

----SNAPSHOT----{6 July 2016 . 2:42:15 pm} SWT2016.image priorSource: 1!

ChangesDummyClass removeSelector: #dummyFunction11!
!ChangesDummyClass methodsFor: ''dummyFunctions'' stamp: ''FS 7/6/2016 14:42''!
dummyFunction15
	^ ''version 1''! !
!ChangesDummyClass methodsFor: ''dummyFunctions'' stamp: ''FS 7/6/2016 14:42'' prior: 50325891!
dummyFunction12
	^ ''version 2''! !

----SNAPSHOT----{6 July 2016 . 2:42:55 pm} SWT2016.image priorSource: 512!

ChangesDummyClass removeSelector: #dummyFunction12!

ChangesDummyClass removeSelector: #dummyFunction13!
!ChangesDummyClass methodsFor: ''dummyFunctions'' stamp: ''FS 7/6/2016 14:43'' prior: 50326111!
dummyFunction14
	^ ''version 2''! !
!ChangesDummyClass methodsFor: ''dummyFunctions'' stamp: ''FS 7/6/2016 14:43''!
dummyFunction16
	^ ''version 1''! !'