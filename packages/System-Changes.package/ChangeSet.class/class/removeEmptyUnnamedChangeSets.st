enumerating
removeEmptyUnnamedChangeSets
	"Remove all change sets that are empty, whose names start with Unnamed,
		and which are not nailed down by belonging to a Project."
	"ChangeSet removeEmptyUnnamedChangeSets"
	| toGo |
	toGo := (self changeSetsNamedSuchThat: [:csName | csName beginsWith: 'Unnamed'])
		select: [:cs | cs isEmpty and: [cs okayToRemoveInforming: false]]
		thenDo: [:cs | self removeChangeSet: cs].
	self inform: toGo size printString, ' change set(s) removed.'