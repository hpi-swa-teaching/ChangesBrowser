accessing
isChangeListItemSelectedAt: anInteger

	^ (self displayedChangeListItems at: anInteger ifAbsent: [^ false]) isSelected