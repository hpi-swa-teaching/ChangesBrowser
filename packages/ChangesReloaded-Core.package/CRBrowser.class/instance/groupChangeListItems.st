initialize-release
groupChangeListItems
	
	| groupsDictionary |
	groupsDictionary := Dictionary new.
	
	self
		changeGroupDescriptions: OrderedCollection new;
		changeGroups: OrderedCollection new.
	
	self changeListItems do: [:each | 
		groupsDictionary keysAndValuesRemove: [:groupID :group | (each separatesGroup: groupID)].
		self add: each toCorrespondingGroupIn: groupsDictionary].