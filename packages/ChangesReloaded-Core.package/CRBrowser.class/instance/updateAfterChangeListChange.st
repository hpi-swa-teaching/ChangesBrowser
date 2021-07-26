updating
updateAfterChangeListChange

	self
		updateButtons;
		updateCodePane;
		changed: #changeGroupDescriptions;
		changed: #versionDescriptions;
		clipVersionIndex;
		clipGroupIndex;
		changed: #groupIndex;
		changed: #versionIndex