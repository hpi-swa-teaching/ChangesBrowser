testing-functionality
testContents

	self selectFirstChangeListItem.
	self assert: self changesBrowser contents = (TextDiffBuilder buildDisplayPatchFrom: self firstMethodCodeInImage to: self firstMethodCode).