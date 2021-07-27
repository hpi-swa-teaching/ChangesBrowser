initialize-release
createNewGroupFor: t1 
	self groups add: OrderedCollection new.
	self groupDescriptions add: t1 groupDescription.
	^ self groups last