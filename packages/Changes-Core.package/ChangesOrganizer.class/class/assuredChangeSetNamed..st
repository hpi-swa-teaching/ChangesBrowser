services
assuredChangeSetNamed: aName
	"Answer a change set of the given name.  If one already exists, answer that, else create a new one and answer it."

	| existing |
	^ (existing := self changeSetNamed: aName)
		ifNotNil:
			[existing]
		ifNil:
			[self basicNewChangeSet: aName]