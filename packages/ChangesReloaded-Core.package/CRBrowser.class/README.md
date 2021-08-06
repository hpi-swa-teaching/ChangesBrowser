A CRBrowser is a tool to recover changes that happened in the last coding session, which weren't saved due to a crash. 
It has an OrderedCollection of CRChangeListItems which is also grouped in different CRChangeGroups. It creates the groups and adds the corresponding ChangeListItems to each group. It communicates with the ChangeListItems over the CRChangeGroups, but when it needs to load the changes, it uses the OrderedCollection that has the chronological order of these changes.


Instance Variables
	changeListItems					OrderedCollection of CRChangeListItems
	groups								OrderedCollection of CRChangeGroups
	groupIndex							Integer
	versionIndex						Integer
						
changeListItems:
	- The CRChangeListItems in chronological order.

groups:
	- The CRChangeGroups.
	
groupIndex:
	- Index of selected group. It is controlled by the user selection in the left list.
	
versionIndex:
	- Index of selected version. It is also controlled by the user selection but in the right list.