initialize-release
initializeChangeGroups
	
	"ToDo a->b means list b is saved under key a. list b contains the indices of changerecords associatied with a, the index of changerecord"
	self changeGroups: Dictionary new.
	1 to: self changeListItems size do: [:counter |
		self changeGroups add: counter -> {}
		]