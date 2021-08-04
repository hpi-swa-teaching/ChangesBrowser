button-actions
recoverChanges

	 | crBrowser |
	 crBrowser := CRBrowser newWith: (SourceFiles second).
	 crBrowser loadPickedChangesAndAskToSave.
	 self closeWindow.