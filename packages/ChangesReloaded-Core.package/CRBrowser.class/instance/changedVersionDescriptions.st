updating
changedVersionDescriptions
	"must be called whenever one of the versionDescriptions changed. Refreshes the versionIndex, too, because the implementation of PluggableListMorphPlus>>updateList conflicts with lists with duplicate entries."
	self
		changed: #versionDescriptions;
		changed: #versionIndex.