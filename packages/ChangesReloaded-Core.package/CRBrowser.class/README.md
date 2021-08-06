A CRBrowser is a tool to recover changes that happened in the last coding session, which weren't saved due to a crash. 

It has an OrderedCollection of CRChangeListItems which is also grouped in different CRChangeGroups. It creates the groups and adds the corresponding ChangeListItems to each group. It communicates with the ChangeListItems over the CRChangeGroups, but when it needs to load the changes, it uses the OrderedCollection that has the chronological order of these changes.


Instance Variables
	changeListItems					OrderedCollection of CRChangeListItems
	groups								OrderedCollection of CRChangeGroups
	groupIndex							Integer
	versionIndex						Integer
						
changeListItems:
	- The CRChangeListItems with chronological order.

groups:
	- The CRChangeGroups.
	
groupIndex:
	- Index of selected group. It is controlled by the user selection.
	
versionIndex:
	- Index of selected version. groupIndex has to be a valid number. It is also controlled by the user selection.