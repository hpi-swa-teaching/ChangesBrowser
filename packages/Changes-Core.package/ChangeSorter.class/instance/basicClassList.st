class list
basicClassList
	"Computed.  View should try to preserve selections, even though index changes"

	^ myChangeSet ifNotNil: [myChangeSet changedClassNames] ifNil: [OrderedCollection new]
