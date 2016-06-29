button actions
refresh
	self testMode
		ifFalse: 	[ | index |
					index := self versionListModel selectedIndex.
					self versionListModel: ChangesVersionListModel new.
					self versionListModel
						changesBrowser: self;
						list: (ChangeListForChangesBrowser browseRecentLog first);
						selectedIndex: index + 1;
						browseFile.
					self updateCurrentlyShownChangeFile.]