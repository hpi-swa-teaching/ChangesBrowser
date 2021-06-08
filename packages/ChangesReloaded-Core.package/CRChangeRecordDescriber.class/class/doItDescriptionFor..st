main
doItDescriptionFor: aChangeListItem

	|changeString|
	changeString := aChangeListItem string.
	
	"packages"
	self ifMatcher: self packageCreatedRegex matches: changeString do: [:matcher | ^ self packageCreatedDescriptionOf: matcher].
	self ifMatcher: self packageRemovedRegex matches: changeString do: [:matcher | ^ self packageRemovedDescriptionOf: matcher].
	self ifMatcher: self packageRenamedRegex matches: changeString do: [:matcher | ^ self packageRenamedDescriptionOf: matcher].
	
	"classes"
	self ifMatcher: self classCreatedRegex matches: changeString do: [:matcher | ^ self classCreatedDescriptionOf: matcher].
	self ifMatcher: self classRemovedRegex matches: changeString do: [:matcher | ^ self classRemovedDescriptionOf: matcher].
	self ifMatcher: self classRenamedRegex matches: changeString do: [:matcher | ^ self classRenamedDescriptionOf: matcher].
	
	"categories"
	self ifMatcher: self categoryCreatedRegex matches: changeString do: [:matcher | ^ self categoryCreatedDescriptionOf: matcher].
	self ifMatcher: self categoryRemovedRegex matches: changeString do: [:matcher | ^ self categoryRemovedDescriptionOf: matcher].
	self ifMatcher: self categoryRenamedRegex matches: changeString do: [:matcher | ^ self categoryRenamedDescriptionOf: matcher].
	
	"methods"
	self ifMatcher: self methodRemovedRegex matches: changeString do: [:matcher | ^ self methodRemovedDescriptionOf: matcher].
	self ifMatcher: self methodRecategorizedRegex matches: changeString do: [:matcher | ^ self methodRecategorizedDescriptionOf: matcher].
	
	"otherwise"
	^ 'doIt: ', changeString