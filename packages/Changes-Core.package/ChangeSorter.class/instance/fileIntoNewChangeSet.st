changeSet menu
fileIntoNewChangeSet
	"Obtain a file designation from the user, and file its contents into a  
	new change set whose name is a function of the filename. Show the  
	new set and leave the current changeSet unaltered."
	| aNewChangeSet stream |
	self okToChange
		ifFalse: [^ self].
	ChangeSet promptForDefaultChangeSetDirectoryIfNecessary.
	stream := StandardFileMenu oldFileStreamFrom: ChangeSet defaultChangeSetDirectory.
	stream
		ifNil: [^ self].
	aNewChangeSet := self class
				newChangesFromStream: stream
				named: (FileDirectory localNameFor: stream name).
	aNewChangeSet
		ifNotNil: [self showChangeSet: aNewChangeSet]