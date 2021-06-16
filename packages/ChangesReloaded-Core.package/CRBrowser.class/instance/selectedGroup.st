accessing
selectedGroup

	^ self changeGroups keys at: self groupIndex ifAbsent: [nil]