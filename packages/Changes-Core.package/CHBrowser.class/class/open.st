instance-creation
open
"should be ^Toolbuilder open: self new but listindex has to be called (somewhere but not here) on browser start, so changes of the first version are shown on startup"
	| browser window |
Transcript show: 'TODO see ChangesBrowser>>open'; cr.
	browser := self new.
	window := ToolBuilder open: browser.
	browser versionListModel listIndex: 1.
	^window