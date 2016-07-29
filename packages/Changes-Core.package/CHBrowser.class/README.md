A CHBrowser (ChangesBrowser) is a tool, which allows you to reset to an arbitrary point of time in your image.
The CHBrowser just implements the GUI, the functionality is 

Instance Variables
	changesBrowserLogic:		<CHBrowserLogic>
	changeSelected:			<Boolean>
	imageStateSelected:		<Boolean>

changesBrowserLogic
	- A CHBrowserLogic, which provides the functionalities to reset changes to the image.

changeSelected
	- A bool value, which indicates, that one or more changes in the browser are selected. Needed, to enable/disable buttons, which needs at least on or more selected change

imageStateSelected
	- A bool value, which indicates, that a imageState in the browser is selected. Needed, to enable/disable buttons, which needs a selected imageState
