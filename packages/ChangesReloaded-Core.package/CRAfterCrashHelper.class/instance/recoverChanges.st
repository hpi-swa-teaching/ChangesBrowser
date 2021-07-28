button-actions
recoverChanges

	 | crBrowser |
	 crBrowser := CRBrowser newWith: (SourceFiles second).
	 crBrowser pickAllChangeListItems.
	 crBrowser loadPickedChangesAndAskToSave.
	 self closeWindow.