main
doItDescriptionFor: aChangeListItem

	self changeString: aChangeListItem string.
	
	"packages"
	self if: self packageCreatedRegex matchesChangeString: [:matcher | ^ self packageCreatedDescriptionOf: matcher].
	self if: self packageRemovedRegex matchesChangeString: [:matcher | ^ self packageRemovedDescriptionOf: matcher].
	self if: self packageRenamedRegex matchesChangeString: [:matcher | ^ self packageRenamedDescriptionOf: matcher].
	
	"classes"
	self if: self classCreatedOrChangedRegex matchesChangeString: [:matcher | ^ self classCreatedOrChangedDescriptionOf: matcher].
	self if: self classMovedRegex matchesChangeString: [:matcher | ^ self classMovedDescriptionOf: matcher].
	self if: self classRemovedRegex matchesChangeString: [:matcher | ^ self classRemovedDescriptionOf: matcher].
	self if: self classRenamedRegex matchesChangeString: [:matcher | ^ self classRenamedDescriptionOf: matcher].
	
	"categories"
	self if: self categoryCreatedRegex matchesChangeString: [:matcher | ^ self categoryCreatedDescriptionOf: matcher].
	self if: self categoryRemovedRegex matchesChangeString: [:matcher | ^ self categoryRemovedDescriptionOf: matcher].
	self if: self categoryRenamedRegex matchesChangeString: [:matcher | ^ self categoryRenamedDescriptionOf: matcher].
	
	"methods"
	self if: self methodRemovedRegex matchesChangeString: [:matcher | ^ self methodRemovedDescriptionOf: matcher].
	self if: self methodRecategorizedRegex matchesChangeString: [:matcher | ^ self methodRecategorizedDescriptionOf: matcher].
	
	"otherwise dont show it, e.g. non permenant doits"
	^ self emptyDescription