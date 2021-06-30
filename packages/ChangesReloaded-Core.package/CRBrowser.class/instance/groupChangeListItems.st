initialize-release
groupChangeListItems
	
	| groups |
	groups := Dictionary new.
	
	self
		changeGroupDescriptions: OrderedCollection new;
		changeGroups: OrderedCollection new.
	
	self changeListItems do: [:each | 
		groups keysDo: [:groupID | (each separatesGroup: groupID)
			ifTrue: [groups removeKey: groupID]].
		(self getCorrespondingGroupOf: each In: groups) add: each].