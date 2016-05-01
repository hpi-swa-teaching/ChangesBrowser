instance creation
open: aChangeList name: aString multiSelect: multiSelect
	"Create a standard system view for the messageSet, whose label is aString.
	The listView may be either single or multiple selection type"
	^ToolBuilder default open: aChangeList label: aString