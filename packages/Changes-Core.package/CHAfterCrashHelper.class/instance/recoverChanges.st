buttonActions
recoverChanges

	| crBrowser |
	crBrowser := CRBrowser newWith: (SourceFiles second).
	crBrowser pickAllChangeListItems.
	crBrowser loadPickedChanges.
	self inform: 'Everything should be recovered. Else check the Recover Changes Browser'.
	self closeWindow.