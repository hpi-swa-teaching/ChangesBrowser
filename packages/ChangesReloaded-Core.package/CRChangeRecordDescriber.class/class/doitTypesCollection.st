main
doitTypesCollection

	^ OrderedCollection new
		add: {self categoryRenamedRegex . #categoryRenamedDescriptionOf:};
		add: {self packageRenamedRegex . #packageRenamedDescriptionOf:};
		add: {self packageCreatedRegex . #packageCreatedDescriptionOf:};
		add: {self packageRemovedRegex . #packageRemovedDescriptionOf:};
		add: {self methodRemovedRegex . #methodRemovedDescriptionOf:};
		yourself.