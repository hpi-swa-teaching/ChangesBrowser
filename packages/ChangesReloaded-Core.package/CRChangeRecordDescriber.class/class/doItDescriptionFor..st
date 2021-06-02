main
doItDescriptionFor: aChangeListItem
	|matcher|
	matcher := self packageCreatedRegex.
	(matcher matches: aChangeListItem string) 
		ifTrue: [^ self packageCreatedDescriptionOf: matcher].
	
	matcher := self packageRemovedRegex.
	(matcher matches: aChangeListItem string) 
		ifTrue: [^ self packageRemovedDescriptionOf: matcher].
		
	matcher := self methodRemovedRegex.
	(matcher matches: aChangeListItem string) 
		ifTrue: [^ self methodRemovedDescriptionOf: matcher].
		
	matcher := self categoryRenamedRegex.
	(matcher matches: aChangeListItem string) 
		ifTrue: [^ self categoryRenamedDescriptionOf: matcher].
		
	^ 'not now'