file-utils
isAtBeginningOfChunk

	^ self file atEnd or: [self file peek isSeparator not]