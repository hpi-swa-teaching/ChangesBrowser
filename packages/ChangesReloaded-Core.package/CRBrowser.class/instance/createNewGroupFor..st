initialize-release
createNewGroupFor: aChangeListItem

	self groups add: OrderedCollection new.
	self privateGroupDescriptions add: aChangeListItem groupDescription.
	^ self groups last