initialize-release
groupChangeListItems
	| t1 |
	t1 := Dictionary new.
	self groupDescriptions: OrderedCollection new;
		 groups: OrderedCollection new.
	self changeListItems
		do: [:t2 | 
			t1
				keysAndValuesRemove: [:t3 :t4 | t2 separatesGroup: t3].
			self add: t2 toCorrespondingGroupIn: t1]