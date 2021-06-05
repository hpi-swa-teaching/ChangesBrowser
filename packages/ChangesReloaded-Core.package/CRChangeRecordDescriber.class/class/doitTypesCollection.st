main
doitTypesCollection

	^ OrderedCollection new
		add: {self packageCreatedRegex . #packageCreatedDescriptionOf:};
		add: {self packageRenamedRegex . #packageRenamedDescriptionOf:};
		add: {self packageRemovedRegex . #packageRemovedDescriptionOf:};
		add: {self categoryCreatedRegex . #categoryCreatedDescriptionOf:};
		add: {self categoryRenamedRegex . #categoryRenamedDescriptionOf:};
		add: {self categoryRemovedRegex . #categoryRemovedDescriptionOf:};
		add: {self methodRemovedRegex . #methodRemovedDescriptionOf:};
		add: {self methodRecategorizeRegex . #methodRecategorizeDescriptionOf:};
		add: {self classCreatedRegex .  #classCreatedDescriptionOf:};
		add: {self classRenamedRegex . #classRenamedDescriptionOf:};
		add: {self classRemovedRegex . #classRemovedDescriptionOf:};
		yourself.