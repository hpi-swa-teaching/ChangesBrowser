instance-creation
newMethodRenamedWith: changeListItems

	^ self new 
			category: #methodRenamed;
			attributes: ({
						#class -> (changeListItems first attributes at: #class).
						#oldMethod -> (changeListItems last attributes at: #method).
						#newMethod -> (changeListItems first attributes at: #method).
							} as: Dictionary);
			changeListItems: changeListItems;
			yourself