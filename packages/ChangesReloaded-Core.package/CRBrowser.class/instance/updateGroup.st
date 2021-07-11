updating
updateGroup
	
	(self selectedGroup noneSatisfy: [:each | each isPicked])
		ifTrue: [self selectedChangeListItem unpickedAttributes do: 
			[:attribute | (self changeGroupDescriptions at: self groupIndex) addAttribute: attribute]]
		ifFalse: [self selectedChangeListItem unpickedAttributes do: 
			[:attribute | (self changeGroupDescriptions at: self groupIndex) removeAttribute: attribute]].