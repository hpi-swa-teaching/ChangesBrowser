loading
loadFrom: startPosition to: stopPosition onProgress: aBlock
	
	| prevChar |
	self clearChangeRecords.
	file position: startPosition.
	[file position < stopPosition] whileTrue: [
		| progress |
		progress := (file position - startPosition) / (stopPosition - startPosition).
		aBlock value: progress.
		
		[self isAtBeginningOfChunk] whileFalse: [prevChar := file next].

		self isCurrentChunkACategory
			ifTrue: [(self isNewline: prevChar) ifTrue: [self loadCategory]]
			ifFalse: [self loadChangeRecord]]