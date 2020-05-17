button-actions
resetCategories: aChangeList

	| listOfCategories |
	listOfCategories := aChangeList select: [:changeRecord | changeRecord string beginsWith: 'SystemOrganization addCategory:'].
	listOfCategories reversed do: [:changeRecord | changeRecord fileIn].