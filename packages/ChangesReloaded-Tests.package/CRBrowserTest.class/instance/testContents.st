testing-functionality
testContents
	
	self selectFirstChangeListItem.
	self
		assert: (TextDiffBuilder buildDisplayPatchFrom: self firstMethodCodeInImage to: self firstMethodCode) 
		equals: self changesBrowser contents.
		
	self selectSecondChangeListItem.
	self
		assert: (TextDiffBuilder buildDisplayPatchFrom: self firstClassCommentCodeInImage to: self firstClassCommentCode) 
		equals: self changesBrowser contents.