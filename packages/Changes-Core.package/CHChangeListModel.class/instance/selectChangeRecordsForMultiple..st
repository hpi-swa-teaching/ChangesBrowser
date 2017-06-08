filtering
selectChangeRecordsForMultiple: filterModes
	self displayedIndexList: 
		(self displayedIndexList select: [ :index | 
			| changeRecord |
			changeRecord := self changeList at: index.
			filterModes detect: [:mode| changeRecord type == mode] 
			ifFound:[:ignoreme | true] ifNone: [false]]).