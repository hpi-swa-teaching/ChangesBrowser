running
getMethodChangeListItemWithDifferentObjectIdentity

	| changeList fakeFileStream |
	
	fakeFileStream :=
		CRFakeFileStream mockChangesFileStream readOnlyCopy setConverterForCode.
	changeList := ChangeList new
		scanFile: fakeFileStream from: 0 to: fakeFileStream size.
	
	^ CRChangeListItem newWithRecord: changeList changeList fourth