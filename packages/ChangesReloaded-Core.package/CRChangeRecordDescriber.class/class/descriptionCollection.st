main
descriptionCollection

	^ OrderedCollection new
	add: {self packageCreatedRegex. #packageCreatedDescriptionOf:};
	yourself.