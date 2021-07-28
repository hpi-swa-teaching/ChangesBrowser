descriptions
description
	
	^ self category, ': ', (self category caseOf: {
		[#method] -> [(self attributes at: #class), ' ', (self attributes at: #method), ' ', (self attributes at: #stamp)].
		[#classComment] -> [(self attributes at: #class), ' ', (self attributes at: #stamp)].
		
		[#categoryCreated] -> ['#', (self attributes at: #category), ' in #', (self attributes at: #class)].
		[#categoryRemoved] -> ['#', (self attributes at: #category), ' from #', (self attributes at: #class)].
		[#categoryRenamed] -> [ '#', (self attributes at: #oldCategory), ' -> #', (self attributes at: #newCategory), ' in #', (self attributes at: #class)].
	
		[#class] -> ['#', (self attributes at: #class), ' in #', (self attributes at: #package)].
		[#classMoved] -> ['#', (self attributes at: #class), ' to #', (self attributes at: #package)].
		[#classRemoved] -> [self attributes at: #class].
		[#classRenamed] -> ['#', (self attributes at: #oldClass), ' -> #', (self attributes at: #newClass)].
	
		[#methodRecategorized] -> ['#', (self attributes at: #method), ' to #', (self attributes at: #category)].
		[#methodRemoved] -> [(self attributes at: #method), ' from ', (self attributes at: #class)].
	
		[#packageCreated] -> ['#', (self attributes at: #package)].
		[#packageRemoved] -> ['#', (self attributes at: #package)].
		[#packageRenamed] -> ['#', (self attributes at: #oldPackage), ' -> #', (self attributes at: #newPackage)]
	}) 