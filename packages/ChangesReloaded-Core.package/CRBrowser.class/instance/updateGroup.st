updating
updateGroup
	
	(self selectedGroup noneSatisfy: [:each | each isPicked])
		ifTrue: [CRChangeListItem unpickedAttributes do: 
			[:attribute | (self changeGroupDescriptions at: self groupIndex) addAttribute: attribute]]
		ifFalse: [CRChangeListItem unpickedAttributes do: 
			[:attribute | (self changeGroupDescriptions at: self groupIndex) removeAttribute: attribute]].