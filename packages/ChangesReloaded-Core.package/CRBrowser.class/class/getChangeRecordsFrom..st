utils
getChangeRecordsFrom: aMultiByteFileStream

	^ Cursor read 
			showWhile: [((self retrieveChangeRecordsFrom: aMultiByteFileStream)
							reject: [:each | each isInImage]) reversed]