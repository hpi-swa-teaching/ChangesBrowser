mocking
mockChangesFileStreamWithAllTypesOfChanges

	^ CRFakeFileStream new string:  '
	
!CRChangesDummyClass methodsFor: ''category'' stamp: ''sv 26/7/2020 13:46''!
method

	^ ''content''! !
!CRChangesDummyClass commentStamp: ''sv 26/7/2020 13:59''!
This is a class comment.!

CRChangesDummyClass organization addCategory: #''new category''!

CRChangesDummyClass organization removeCategory: #''obsolete category''!

CRChangesDummyClass organization renameCategory: #''old category'' toBe: #''new category''!

Object subclass: #CRChangesDummyClass
	instanceVariableNames: ''''
	classVariableNames: ''''
	poolDictionaries: ''''
	category: ''ChangesReloadedDummyPackage1''!

SystemOrganization classify: #CRChangesDummyClass under: #ChangesReloadedDummyPackage2!

Smalltalk removeClassNamed: #CRChangesDummyClass!

Smalltalk renameClassNamed: #CRChangesDummyOldClass as: #CRChangesDummyNewClass!

CRChangesDummyClass organization classify: #method under: #category!

CRChangesDummyClass removeSelector: #obsoleteMethod!

SystemOrganization addCategory: #ChangesReloadedDummyPackage1!

SystemOrganization removeSystemCategory: #ChangesReloadedDummyPackage1!

SystemOrganization renameCategory: #ChangesReloadedDummyPackage1 toBe: #ChangesReloadedDummyPackage2!
'