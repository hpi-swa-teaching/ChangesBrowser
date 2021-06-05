main
descriptionCollection

	^ OrderedCollection new
		add: {self categoryRenamedRegex . #categoryRenamedDescriptionOf:};
		add: {self packageCreatedRegex . #packageCreatedDescriptionOf:};
		add: {self packageRemovedRegex . #packageRemovedDescriptionOf:};
		add: {self methodRemovedRegex . #methodRemovedDescriptionOf:};
		yourself.