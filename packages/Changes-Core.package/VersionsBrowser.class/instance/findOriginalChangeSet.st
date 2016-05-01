menu
findOriginalChangeSet
	| changeSet |
	self currentChange ifNil: [^ self].
	changeSet := self currentChange originalChangeSetForSelector: self selectedMessageName.
	changeSet = #sources ifTrue:
		[^ self inform: 'This version is in the .sources file.'].
	changeSet ifNil:
		[^ self inform: 'This version was not found in any changeset nor in the .sources file.'].
	(ChangeSorter new myChangeSet: changeSet) open