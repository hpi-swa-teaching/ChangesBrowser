running
setUp

	| fakeFileStream |
	super setUp.
	
	fakeFileStream :=
		CRFakeFileStream mockChangesFileStream readOnlyCopy setConverterForCode.
	self changeRecords: (ChangeList new scanFile: fakeFileStream from: 0 to: fakeFileStream size) changeList.
		
	