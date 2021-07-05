instance-creation
newMethodRenamedOf: aChangeListItem with: changeListItems

	^ self new 
			changeRecord: (aChangeListItem changeRecord);
			category: (aChangeListItem category);
			attributes: (aChangeListItem attributes);
			changeListItems: changeListItems;
			yourself