initializing
retreiveChangeRecordsFromChangesFile

	| changesFile changesFileCopy start end |
	changesFile := SourceFiles at: 2.
	changesFileCopy := changesFile readOnlyCopy.
	changesFileCopy setConverterForCode.
	end := changesFileCopy size.
	start := 0 max: (end - self class numberOfBytesToLoadChangesFrom).
	
	^ ChangeList new
		scanFile: changesFileCopy from: start to: end;
		changeList