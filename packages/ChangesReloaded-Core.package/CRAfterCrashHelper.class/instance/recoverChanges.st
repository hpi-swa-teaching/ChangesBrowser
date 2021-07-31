button-actions
recoverChanges

	 | crBrowser |
	 crBrowser := CRBrowser newWith: (SourceFiles second).
	 crBrowser pickAll.
	 crBrowser loadPickedChangesAndAskToSave.
	 self closeWindow.