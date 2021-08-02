updating
changedChangeList
	"must be called whenever items from changeListItems have been removed or added"
	self
		groupIndex: 0;
		changedPickStatus;
		changed: #groupDescriptions;
		changed: #versionDescriptions