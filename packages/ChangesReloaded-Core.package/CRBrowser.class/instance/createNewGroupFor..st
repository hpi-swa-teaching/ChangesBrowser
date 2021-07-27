initialize-release
createNewGroupFor: aChangeListItem
	self groups add: OrderedCollection new.
	self groupDescriptions add: aChangeListItem groupDescription.
	^ self groups last