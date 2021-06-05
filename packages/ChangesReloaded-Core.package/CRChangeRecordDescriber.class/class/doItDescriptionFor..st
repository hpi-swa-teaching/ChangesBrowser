main
doItDescriptionFor: aChangeListItem
	| matcher |
	"matcher := self packageCreatedRegex.
	(matcher matches: aChangeListItem string) 
		ifTrue: [^ self packageCreatedDescriptionOf: matcher]."
	self descriptionCollection do: [:each | ^ self DescriptionOf: aChangeListItem in: each]	.
	"
	output := ''.
	self packageCreatedDescriptionOf: aChangeListItem.
	output ifEmpty: [
	matcher := self packageRemovedRegex.
	(matcher matches: aChangeListItem string) 
		ifTrue: [^ self packageRemovedDescriptionOf: matcher].
		
	matcher := self methodRemovedRegex.
	(matcher matches: aChangeListItem string) 
		ifTrue: [^ self methodRemovedDescriptionOf: matcher].
		
	matcher := self categoryRenamedRegex.
	(matcher matches: aChangeListItem string) 
		ifTrue: [^ self categoryRenamedDescriptionOf: matcher].
	"	
	^ 'not now'