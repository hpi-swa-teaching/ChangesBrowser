as yet unclassified
recoverChanges
	|logic|
	logic := CHBrowserLogic new.
	logic resetToLastVersion.
	self inform: 'Everything should be recovered. Else check the Recover Changes Browser'.
	self closeWindow.