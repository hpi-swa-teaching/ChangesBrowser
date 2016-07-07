A CHBrowserLogic provides functionalities, to reset changes. The functionalitites can be called from a CHBrowser.

Instance Variables
	browser:						<CHBrowser>
	changeList:					<CHChangeListModel>
	changesFile:				<MultiByteFileStream>
	imageStateListModel:	<CHImageStateListModel>
	testMode:					<Boolean>

browser
	- A CHBrowser which provides the GUI for the functionalities of a CHBrowserLogic.

changeList
	- The changeList holds all ChangeRecords after a specific timeStamp.

changesFile
	- A MultiByteFileStream, which represents a ChangeFile. In a ChangeFile is every change to the image documented with a append-only strategy.

imageStateListModel
	- The imageStateListModel manages the data shown in the browser.

testMode
	- A bool value, which indicates, that the BrowserLogic is running in testMode.
