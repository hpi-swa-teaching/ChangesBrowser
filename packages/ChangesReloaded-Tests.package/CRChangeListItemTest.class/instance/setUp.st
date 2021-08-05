running
setUp

	| changeList fakeFileStream |
	super setUp.
	
	fakeFileStream :=
		CRFakeFileStream mockChangesFileStreamWithAllTypesOfChanges readOnlyCopy setConverterForCode.
	changeList := ChangeList new
		scanFile: fakeFileStream from: 0 to: fakeFileStream size.
	
	self changeListItems: (changeList changeList collect: [:each | CRChangeListItem newWith: each]).