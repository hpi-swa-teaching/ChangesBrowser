testing-functionality
testContents
	
	self selectFirstChangeListItem.
	self
		assert: (TextDiffBuilder buildDisplayPatchFrom: self firstMethodCodeInImage to: self firstMethodCode) 
		equals: self changesBrowser contents.