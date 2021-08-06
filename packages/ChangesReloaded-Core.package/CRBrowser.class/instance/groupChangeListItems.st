initialize-release
groupChangeListItems

	| groupsDictionary |
	groupsDictionary := Dictionary new.
	
	self	groups: OrderedCollection new.
	
	self changeListItems do: [:each | 
		groupsDictionary keysAndValuesRemove: [:groupID :group | (each shouldSeparateGroupWith: groupID)].
		self insert: each into: groupsDictionary].