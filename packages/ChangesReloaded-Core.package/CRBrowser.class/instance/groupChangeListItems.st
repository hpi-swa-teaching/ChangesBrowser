initialize-release
groupChangeListItems
	
	| groups |
	groups := Dictionary new.
	
	self
		changeGroupDescriptions: OrderedCollection new;
		changeGroups: OrderedCollection new.
	
	self changeListItems do: [:each | | group |
		groups keysDo: [:groupID | (each separatesGroup: groupID) ifTrue: [groups removeKey: groupID]].
		each groupID ifNotNil: [
			group := groups
				at: each groupID
				ifAbsent: [
					self changeGroups add: OrderedCollection new.
					self changeGroupDescriptions add: each groupDescription.
					groups at: each groupID put: self changeGroups last]]
		ifNil: [
			group := self changeGroups add: OrderedCollection new.
			self changeGroupDescriptions add: each groupDescription].
		group add: each].