mocking
mockChanges
^ CRFakeFileStream new string:  '

----SNAPSHOT----{21 June 2020 . 3:49:25 pm} SWT-2020.image priorSource: 29517665!
!ChangesDummyClass methodsFor: ''nil'' stamp: ''ug 21/6/2020 15:51''!
functionOrder1
	^''first 1''! !

ChangesDummyClass organization addCategory: #''function-order-testing''!

ChangesDummyClass organization classify: #functionOrder1 under: #''function-order-testing''!
!ChangesDummyClass methodsFor: ''function-order-testing'' stamp: ''ug 21/6/2020 15:51'' prior: 79870989!
functionOrder1
	^''first 1''! !
!ChangesDummyClass methodsFor: ''function-order-testing'' stamp: ''ug 21/6/2020 15:52''!
functionOrder2
	^''first 2''! !
!ChangesDummyClass methodsFor: ''function-order-testing'' stamp: ''ug 21/6/2020 15:52''!
functionOrder3
	^''first 3''! !
!ChangesDummyClass methodsFor: ''function-order-testing'' stamp: ''ug 21/6/2020 15:52'' prior: 79871284!
functionOrder1
	^''then 11''! !
!ChangesDummyClass methodsFor: ''function-order-testing'' stamp: ''ug 21/6/2020 15:53'' prior: 79871514!
functionOrder3
	^''then 33''! !
!ChangesDummyClass methodsFor: ''function-order-testing'' stamp: ''ug 21/6/2020 15:53''!
functionOrder4
	^''allways 4''! !

----SNAPSHOT----{{21 June 2020 . 3:50:25 pm} SWT-2020.image priorSource: 29517665!!
'