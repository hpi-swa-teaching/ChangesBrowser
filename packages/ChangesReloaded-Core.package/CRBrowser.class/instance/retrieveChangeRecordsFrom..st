initialize-release
retrieveChangeRecordsFrom: aMultiByteFileStream

	| changesFileCopy start end |
	changesFileCopy := aMultiByteFileStream readOnlyCopy.
	changesFileCopy setConverterForCode.
	end := changesFileCopy size.
	start := 0 max: (end - self class numberOfBytesToLoadChangesFrom).
"	self halt."
	^ ChangeList new
		scanFile: changesFileCopy from: start to: end;
		changeList