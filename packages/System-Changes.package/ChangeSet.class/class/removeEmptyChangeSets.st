enumerating
removeEmptyChangeSets
	"Remove all change sets that are empty
		and which are not nailed down by belonging to a Project."
	"ChangeSet removeEmptyChangeSets"
	| toGo |
	toGo := self allChangeSets
		select: [:cs | cs isEmpty and: [cs okayToRemoveInforming: false]]
		thenDo: [:cs | self removeChangeSet: cs].
	self inform: toGo size printString, ' change set(s) removed.'