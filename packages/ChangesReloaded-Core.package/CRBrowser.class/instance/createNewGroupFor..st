initialize-release
createNewGroupFor: aChangeListItem
	
	self changeGroups add: OrderedCollection new.
	self changeGroupDescriptions add: aChangeListItem groupDescription.
	^ self changeGroups last
