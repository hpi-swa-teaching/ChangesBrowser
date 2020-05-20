initializing
initializeChangeList

	| changesFile origChangesFile start end |
	origChangesFile := SourceFiles at: 2.
	changesFile := origChangesFile readOnlyCopy.
	changesFile setConverterForCode.
	end := changesFile size.
	start := 0 max: (end - self class numberOfBytesToLoadChangesFrom).
	changeList := Cursor read
		showWhile: [ChangeList new
						scanFile: changesFile
						from: start
						to: end]