running
setUp

	| changeList fakeFileStream |
	super setUp.
	
	fakeFileStream :=
		CRFakeFileStream mockChangesFileStream readOnlyCopy setConverterForCode.
	changeList := ChangeList new
		scanFile: fakeFileStream from: 0 to: fakeFileStream size.
	
	self methodChangeRecord: changeList changeList second.
	self classCommentChangeRecord: (changeList changeList at: 14).
	self methodChangeRecordInImage: (changeList changeList at: 12).
	self classCommentChangeRecordInImage: (changeList changeList at: 13).
	self firstClassCommentChangeRecord: changeList changeList third