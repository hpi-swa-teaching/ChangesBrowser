initialize-release
initializeChangesGroups
	
	self changeGroups: Dictionary new.
	1 to: self changeListItems size do: [:counter |
		self changeGroups add: counter -> {}
		]