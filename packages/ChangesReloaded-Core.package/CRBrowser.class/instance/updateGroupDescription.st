updating
updateGroupDescription
	
	(self selectedGroup noneSatisfy: [:each | each isPicked])
		ifTrue: [CRChangeListItem unpickedAttributes do: 
			[:attribute | (self selectedGroupDescription) addAttribute: attribute]]
		ifFalse: [CRChangeListItem unpickedAttributes do: 
			[:attribute | (self selectedGroupDescription) removeAttribute: attribute from: 1 to: self selectedGroupDescription size]].
	
	self updateDescriptions.