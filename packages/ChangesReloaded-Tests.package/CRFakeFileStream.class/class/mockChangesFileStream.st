mocking
mockChangesFileStream

	^ CRFakeFileStream new string:  '

----SNAPSHOT----{21 June 2020 . 3:49:25 pm} SWT-2020.image priorSource: 29517665!
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
!CRChangesDummyClass methodsFor: ''function-order-testing'' stamp: ''sv 26/7/2020 13:46''!
functionOrder5

	^''always 5''! !
!CRChangesDummyClass methodsFor: ''function-order-testing'' stamp: ''sv 26/7/2020 13:47''!
functionOrder5

	^''always 5.0''! !
!CRChangesDummyClass2 commentStamp: ''sv 26/7/2020 13:59''!
This is a class comment for test purposes.!
!CRChangesDummyClass2 commentStamp: ''sv 26/7/2020 14:00''!
This is an altered class comment for test purposes.!

----SNAPSHOT----{{21 June 2020 . 3:50:25 pm} SWT-2020.image priorSource: 29517665!!

----STARTUP----{10 June 2021 . 6:22:54 pm} as C:\Users\Florian Krummrey\Desktop\SWT\SWT2021.app\Contents\Resources\SWT2021.image!


SystemOrganization addCategory: #ChangesReloadedDummyPackage1!

SystemOrganization addCategory: #''#''''Changes Reloaded Dummy Package 2''''''!

SystemOrganization renameCategory: #''#''''Changes Reloaded Dummy Package 2'''''' toBe: #ChangesReloadedDummyPackage2!

Object subclass: #CRDP1Class
	instanceVariableNames: ''''
	classVariableNames: ''''
	poolDictionaries: ''''
	category: ''ChangesReloadedDummyPackage2''!

SystemOrganization classify: #CRDP1Class under: #ChangesReloadedDummyPackage1!

SystemOrganization removeSystemCategory: #ChangesReloadedDummyPackage2!

CRDP1Class subclass: #CRDP1ChildClass
	instanceVariableNames: ''''
	classVariableNames: ''''
	poolDictionaries: ''''
	category: ''ChangesReloadedDummyPackage1''!

CRDP1Class organization addCategory: #DummyCategory1!

CRDP1Class organization addCategory: #''Dummy Category 2''!

CRDP1Class organization renameCategory: #''Dummy Category 2'' toBe: #DummyCategory2!
!CRDP1Class methodsFor: ''DummyCategory2'' stamp: ''FK 6/10/2021 18:34''!
DummyMethod

	^ ''Hello World''! !

CRDP1Class organization classify: #DummyMethod under: #DummyCategory1!
!CRDP1Class methodsFor: ''DummyCategory1'' stamp: ''FK 6/10/2021 18:34'' prior: 113343258!
DummyMethod

	^ ''Hello World''! !

CRDP1Class removeSelector: #DummyMethod!

CRDP1Class organization removeCategory: #DummyCategory2!

CRDP1Class organization removeCategory: #DummyCategory1!

CRDP1Class class organization addCategory: #classDummyCategory1!

CRDP1Class class organization addCategory: #classDummyCategory2!

CRDP1Class class organization renameCategory: #classDummyCategory2 toBe: #''cla''''ss Dumm''''y Cat''''egory ''''2''!
!CRDP1Class class methodsFor: ''cla''''ss Dumm''''y Cat''''egory ''''2'' stamp: ''FK 6/10/2021 18:38''!
classDummyMethod

	^''Hello Class''! !

CRDP1Class class organization classify: #classDummyMethod under: #classDummyCategory1!
!CRDP1Class class methodsFor: ''classDummyCategory1'' stamp: ''FK 6/10/2021 18:38'' prior: 113343974!
classDummyMethod

	^''Hello Class''! !

CRDP1Class class removeSelector: #classDummyMethod!

CRDP1Class class organization removeCategory: #''cla''''ss Dumm''''y Cat''''egory ''''2''!

CRDP1Class class organization removeCategory: #classDummyCategory1!

Smalltalk removeClassNamed: #CRDP1ChildClass!

Smalltalk removeClassNamed: #CRDP1Class!

SystemOrganization removeSystemCategory: #ChangesReloadedDummyPackage1!

----QUIT----{10 June 2021 . 6:39:02 pm} SWT2021.image priorSource: 46233208!'