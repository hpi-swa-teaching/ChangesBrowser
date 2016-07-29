filtering
selectChangeRecords: block
	self displayedIndexList: (
		self displayedIndexList select: [ :index | 
			| changeRecord |
			changeRecord := self changeList at: index.
			block value: changeRecord ]).