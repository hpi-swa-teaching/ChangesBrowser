A CRChangeGroup is container of CRChangeListItems that are in conflict, e.g. of the same method. It has also a description, which can be used by a CRBrowser. 

Instance Variables
	changeListItems:		OrderedCollectioin of ChangeListItems

changeListItems
	- the changeListItems of this group in chronological order. The user chooses one change, but also gets older changes as versions in version history.
