fileIn/Out
serviceBrowseChangeFile
	"Answer a service for opening a changelist browser on a file"

	^ (SimpleServiceEntry 
		provider: self 
		label: 'changelist browser'
		selector: #browseStream:
		description: 'open a changelist tool on this file'
		buttonLabel: 'changes')
		argumentGetter: [ :fileList | fileList readOnlyStream ]