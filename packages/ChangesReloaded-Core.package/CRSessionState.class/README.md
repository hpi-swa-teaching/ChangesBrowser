A CRSessionState is a singleton that saves the state whether a CRBrowser loaded changes or not. This is important for not showing all changes after loading some of them.

Instance Variables
	hasAlreadyFiledIn:		aBool

hasAlreadyFiledIn
	- True if a CRBrowser loaded some changes
