testing
testLoggingOfEvent
	
	| changesFileCopy end lastChangeRecord |
	changesFileCopy := SourceFiles second readOnlyCopy.
	changesFileCopy setConverterForCode.
	end := changesFileCopy size.
	
	lastChangeRecord := (ChangeList new
			scanFile: changesFileCopy from: end - 1000 to: end;
			changeList) last.
			
	
	self assert: '(RBRenameMethodRefactoring renameMethod: #methodToRename in: CRChangesDummyClass to: #renamedMethod permutation: #()) execute' 
		equals: lastChangeRecord string