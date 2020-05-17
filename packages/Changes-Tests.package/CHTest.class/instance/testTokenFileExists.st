testing-afterCrash
testTokenFileExists
	self assert: (FileDirectory default fileOrDirectoryExists: 'unSnapshotedChanges.cb')