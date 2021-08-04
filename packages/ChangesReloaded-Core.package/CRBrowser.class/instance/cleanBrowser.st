initialize-release
cleanBrowser

	self changeListItems: OrderedCollection new.
	self groups: OrderedCollection new.
	self 
		changedGroupDescriptions; 
		changedVersionDescriptions.