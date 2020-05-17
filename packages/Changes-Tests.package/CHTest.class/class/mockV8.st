mock objects
mockV8
^ CHFakeFileStream new string:  '

----SNAPSHOT----{6 July 2016 . 2:41:33 pm} SWT2016.image priorSource: 16146294!
Object subclass: #ChangesMockClass
	instanceVariableNames: ''''
	classVariableNames: ''''
	poolDictionaries: ''''
	category: ''Changes-Tests''!
	
ChangesMockClass organization addCategory: #mockMethods!
!ChangesMockClass methodsFor: ''mockMethods'' stamp: ''MT 7/1/2017 15:15''!
mockMethod1
^ ''v1''! !
!ChangesMockClass methodsFor: ''mockMethods'' stamp: ''MT 7/1/2017 15:16''!
mockMethod2
^ ''v1''! !

Smalltalk removeClassNamed: #ChangesMockClass!

----SNAPSHOT----{7 July 2016 . 2:32:19 pm} SWT2016.image priorSource: 1!'