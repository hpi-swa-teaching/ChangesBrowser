changeSet menu
browseMethodConflicts
	"Check to see if any other change set also holds changes to any methods in the selected change set; if so, open a browser on all such."

	| aList |

	aList := myChangeSet 
		messageListForChangesWhich: [ :aClass :aSelector |
			(ChangesOrganizer allChangeSetsWithClass: aClass selector: aSelector) size > 1
		]
		ifNone: [^ self inform: 'No other change set has changes
for any method in this change set.'].
	
	ToolSet
		browseMessageSet: aList 
		name: 'Methods in "', myChangeSet name, '" that are also in other change sets (', aList size printString, ')'
		autoSelect: nil