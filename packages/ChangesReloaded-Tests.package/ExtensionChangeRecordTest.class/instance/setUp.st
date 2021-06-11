running
setUp

	| changeList fakeFileStream |
	super setUp.
	
	fakeFileStream :=
		CRFakeFileStream mockChangesFileStream readOnlyCopy setConverterForCode.
	changeList := ChangeList new
		scanFile: fakeFileStream from: 0 to: fakeFileStream size.
	
	self methodChangeRecord: (changeList changeList at: 14).
	self classCommentChangeRecord: (changeList changeList at: 15).
	self methodChangeRecordInImage: changeList changeList first.
	self classCommentChangeRecordInImage: changeList changeList second.
	self firstClassCommentChangeRecord: changeList changeList third