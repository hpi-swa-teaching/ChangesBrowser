running
setUp

	| changeList fakeFileStream |
	super setUp.
	
	fakeFileStream :=
		CRFakeFileStream mockChangesFileStream readOnlyCopy setConverterForCode.
	changeList := ChangeList new
		scanFile: fakeFileStream from: 0 to: fakeFileStream size.
	
	self methodChangeListItem:
		(CRChangeListItem newWithRecord: changeList changeList second).
	
	self classCommentChangeListItem:
		(CRChangeListItem newWithRecord: changeList changeList third)