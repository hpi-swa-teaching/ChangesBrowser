mock objects
mockV9
^ CHFakeFileStream new string:  '

----SNAPSHOT----{1 July 2017 . 2:51:25 pm} SWT2017.image priorSource: 29517665!
!ChangesDummyClass methodsFor: ''nil'' stamp: ''avw 7/1/2017 14:56''!
functionOrder1
	^''first 1''! !

ChangesDummyClass organization addCategory: #''function-order-testing''!

ChangesDummyClass organization classify: #functionOrder1 under: #''function-order-testing''!
!ChangesDummyClass methodsFor: ''function-order-testing'' stamp: ''avw 7/1/2017 14:56'' prior: 79870989!
functionOrder1
	^''first 1''! !
!ChangesDummyClass methodsFor: ''function-order-testing'' stamp: ''avw 7/1/2017 14:57''!
functionOrder2
	^''first 2''! !
!ChangesDummyClass methodsFor: ''function-order-testing'' stamp: ''avw 7/1/2017 14:57''!
functionOrder3
	^''first 3''! !
!ChangesDummyClass methodsFor: ''function-order-testing'' stamp: ''avw 7/1/2017 14:57'' prior: 79871284!
functionOrder1
	^''then 11''! !
!ChangesDummyClass methodsFor: ''function-order-testing'' stamp: ''avw 7/1/2017 14:58'' prior: 79871514!
functionOrder3
	^''then 33''! !
!ChangesDummyClass methodsFor: ''function-order-testing'' stamp: ''avw 7/1/2017 14:58''!
functionOrder4
	^''allways 4''! !

----SNAPSHOT----{1 July 2017 . 3:51:25 pm} SWT2017.image priorSource: 29517665!!
'