mocking
mockChangesFileStream

	^ self new string:  '
	
!CRChangesDummyClass methodsFor: ''function-order-testing'' stamp: ''sv 26/7/2020 13:46''!
functionOrder5

	^ ''always 5''! !
!CRChangesDummyClass2 commentStamp: ''sv 26/7/2020 13:59''!
This is a class comment for test purposes.!

----SNAPSHOT----{21 June 2020 . 3:49:25 pm} SWT-2020.image priorSource: 29517665!

!CRChangesDummyClass2 methodsFor: ''nil'' stamp: ''ug 21/6/2020 15:50''!
splitMethod
	^''first 1''! !
	
Smalltalk removeClassNamed: #CRChangesDummyClass2!

Object subclass: #CRChangesDummyClass2
	instanceVariableNames: ''''
	classVariableNames: ''''
	poolDictionaries: ''''
	category: ''ChangesReloaded-Tests''!
	
!CRChangesDummyClass2 methodsFor: ''nil'' stamp: ''ug 21/6/2020 15:51''!
splitMethod
	^''first 2''! !
	
CRChangesDummyClass2 removeSelector: #splitMethod!

!CRChangesDummyClass2 methodsFor: ''nil'' stamp: ''ug 21/6/2020 15:51''!
splitMethod
	^''first 3''! !

!CRChangesDummyClass methodsFor: ''nil'' stamp: ''ug 21/6/2020 15:51''!
functionOrder1
	^''first 1''! !

!CRChangesDummyClass commentStamp: ''ug 21/6/2020 15:51'' prior: 0!
This is a fancy schmancy dummy class!

CRChangesDummyClass organization addCategory: #''function-order-testing''!

CRChangesDummyClass organization classify: #functionOrder1 under: #''function-order-testing''!

!CRChangesDummyClass methodsFor: ''function-order-testing'' stamp: ''ug 21/6/2020 15:51'' prior: 79870989!
functionOrder1
	^''first 1''! !
	
!CRChangesDummyClass methodsFor: ''function-order-testing'' stamp: ''ug 21/6/2020 15:52''!
functionOrder2
	^''first 2''! !
	
!CRChangesDummyClass methodsFor: ''function-order-testing'' stamp: ''ug 21/6/2020 15:52''!
functionOrder3
	^''first 3''! !
	
!CRChangesDummyClass methodsFor: ''function-order-testing'' stamp: ''ug 21/6/2020 15:52'' prior: 79871284!
functionOrder1
	^''then 11''! !
	
!CRChangesDummyClass methodsFor: ''function-order-testing'' stamp: ''ug 21/6/2020 15:53'' prior: 79871514!
functionOrder3
	^''then 33''! !
	
!CRChangesDummyClass methodsFor: ''function-order-testing'' stamp: ''ug 21/6/2020 15:53''!
functionOrder4
	^''allways 4''! !
	
!CRChangesDummyClass2 commentStamp: ''sv 26/7/2020 14:00''!
This is an altered class comment for test purposes.!

!CRChangesDummyClass2 commentStamp: ''sv 26/7/2020 14:01''!
This is another altered class comment for test purposes.!

!CRChangesDummyClass methodsFor: ''function-order-testing'' stamp: ''sv 26/7/2020 14:47''!
functionOrder5

	^''always 5.0''! !

----STARTUP----{21 June 2020 . 3:50:25 pm} as SWT-2020.image!
'