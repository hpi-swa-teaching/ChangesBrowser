A CHBrowser (ChangesBrowser) is a tool, which allows you to reset to an arbitrary point of time in your image.
The CHBrowser just implements the GUI, the functionality is 

Instance Variables
	browserLogic: 				<CHBrowserLogic>
	changeSelected:			<Boolean>
	imageStateSelected:		<Boolean>
	testMode:					<Boolean>

browserLogic
	- A CHBrowserLogic, which provides the functionalities to reset changes to the image.

changeSelected
	- A bool value, which indicates, that one or more changes in the browser are selected. Needed, to enable/disable buttons, which needs at least on or more selected change

imageStateSelected
	- A bool value, which indicates, that a imageState in the browser is selected. Needed, to enable/disable buttons, which needs a selected imageState

testMode
	- A bool value, which indicates, that the Browser is running in testMode.
