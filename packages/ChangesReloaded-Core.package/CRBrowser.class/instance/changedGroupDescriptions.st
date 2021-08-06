updating
changedGroupDescriptions
	"must be called whenever one of the groupDescriptions changed. Refreshes the groupIndex, too, because the implementation of PluggableListMorphPlus>>updateList conflicts with lists with duplicate entries."
	self
		changed: #groupDescriptions;
		changed: #groupIndex.