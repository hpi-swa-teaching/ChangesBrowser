accessing
buildNewDisplayList

	self 
		displayList: OrderedCollection new;
		indexMap: OrderedCollection new.
	1 to: list size do: [ :i |
		self filterMode == #methods ifTrue: [
			((self changeList at: i) type == #method) ifTrue: [
				self indexMap add: i.
				self displayList add: (list at: i).]].
		self filterMode == #all ifTrue: [
			self indexMap add: i.
			self displayList add: (list at: i).].
		self filterMode == #noDoIts ifTrue: [
			((self changeList at: i) type == #doIt) ifFalse: [
				self indexMap add: i.
				self displayList add: (list at: i).]].].