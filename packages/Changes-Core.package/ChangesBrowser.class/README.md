A ChangesBrowser is a tool, which allows you to reset to an arbitrary point of time in your image.

Instance Variables
	changeList:				<ChangeListForChangesBrowser>
	changeListView:			<Object>
	changeSelected:		<Object>
	versionListModel:		<ChangesVersionListModel>
	versionSelected:		<bool>

changeList
	- The changeList holds all ChangeRecords after a specific timeStamp. A changeRecord is the new version of a method or a log entry for do-its.

changeListView
	- xxxxx

changeSelected
	- xxxxx

versionListModel
	- xxxxx

versionSelected
	- A bool value, which indicates, that a version in the browser is selected. Needed, to enable/disable buttons, which needs a selected version (like 'Reset to selected version')
