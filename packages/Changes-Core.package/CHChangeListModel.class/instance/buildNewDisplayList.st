filtering
buildNewDisplayList
	self deprecated: 'I do not appear to be used'.
	self 
		displayList: OrderedCollection new;
		indexMap: OrderedCollection new.
	1 to: list size do: [:index |
		self filterMode == #all
			ifTrue: [self indexMap add: index.
					self displayList add: (list at: index)].
		self filterMode == #selectedSnapshot
			ifTrue: [	((self changeList at: index) isSnapshot and: [index > 1]) 
					ifTrue: [^ 0]
					ifFalse: [self indexMap add: index.
							self displayList add: (list at: index)]].
		self filterMode == #methods
			ifTrue: [	((self changeList at: index) type == #method)
					ifTrue: [self indexMap add: index.
							self displayList add: (list at: index)]].
		self filterMode == #noDoIts
			ifTrue: [	((self changeList at: index) type == #doIt)
					ifFalse: [self indexMap add: index.
							self displayList add: (list at: index)]]]