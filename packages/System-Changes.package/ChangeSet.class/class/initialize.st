class initialization
initialize
	"ChangeSet initialize"
	AllChangeSets == nil ifTrue:
		[AllChangeSets := OrderedCollection new].
	self gatherChangeSets.
	FileServices registerFileReader: self.
