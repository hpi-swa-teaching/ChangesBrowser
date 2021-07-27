updating
updateAfterChangeListChange

	self
		updateButtons;
		updateCodePane;
		changed: #groupDescriptions;
		changed: #versionDescriptions;
		clipVersionIndex;
		clipGroupIndex;
		changed: #groupIndex;
		changed: #versionIndex