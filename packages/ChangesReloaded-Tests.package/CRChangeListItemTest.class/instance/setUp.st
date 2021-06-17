running
setUp

	| changeList fakeFileStream |
	super setUp.
	
	fakeFileStream :=
		CRFakeFileStream mockChangesFileStream readOnlyCopy setConverterForCode.
	changeList := ChangeList new
		scanFile: fakeFileStream from: 0 to: fakeFileStream size.
	
	self methodChangeListItem:
		(CRChangeListItemBuilder newChangeListItemWith: changeList changeList fourth).
	
	self classCommentChangeListItem:
		(CRChangeListItemBuilder newChangeListItemWith: changeList changeList fifth)