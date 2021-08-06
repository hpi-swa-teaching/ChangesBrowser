utils
retrieveChangeRecordsFrom: aMultiByteFileStream

	| changesFileCopy start end |

	changesFileCopy := aMultiByteFileStream readOnlyCopy setConverterForCode.
	end := changesFileCopy size.
	start := 0 max: (end - self numberOfBytesToLoadChangesFrom).

	^ ChangeList new
		scanFile: changesFileCopy from: start to: end;
		changeList