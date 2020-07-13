updating
updateLoadButton

	self loadButton
		label: ('Load ' , self pickedChangeListItems size , ' changes');
		enabled: self pickedChangeListItems size ~~ 0