accessing
isItemSelectedAt: anInteger

	^ (self changeListItems at: anInteger ifAbsent: [^ false]) isSelected