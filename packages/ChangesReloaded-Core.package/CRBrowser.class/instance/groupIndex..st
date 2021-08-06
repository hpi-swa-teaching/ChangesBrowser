accessing
groupIndex: aNumber

	groupIndex := aNumber.
	self
		changed: #groupIndex;
		versionIndex: 0;
		changedSelection;
		changedVersionDescriptions.