accessing
nextChunk

	| chunk |
	chunk := converter nextChunkFromStream: self.
	"self next."
	^ chunk