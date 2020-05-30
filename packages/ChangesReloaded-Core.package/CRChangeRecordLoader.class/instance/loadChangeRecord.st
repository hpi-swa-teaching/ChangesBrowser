loading
loadChangeRecord

	| chunkPosition chunk |
	chunkPosition := self file position.
	chunk := self file nextChunk.
	self file skipStyleChunk.

	chunk size > 0 ifTrue: [
		| type |
		(chunk beginsWith: '----')
			ifTrue: [type := #misc]
			ifFalse: [type := #doIt].
		self addChangeRecord: (ChangeRecord new
			file: self file position: chunkPosition type: type)]