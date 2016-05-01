fileIn/Out
serviceBrowseCompressedChangeFile
	"Answer a service for opening a changelist browser on a file"

	^ SimpleServiceEntry 
		provider: self 
		label: 'changelist browser'
		selector: #browseCompressedChangesFile:
		description: 'open a changelist tool on this file'
		buttonLabel: 'changes'