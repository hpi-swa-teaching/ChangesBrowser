regex & descriptions
oldCategoryRegexDescriptionList
	
	^ {
		{ #categoryCreated. '^([^ ]+) (class )?organization addCategory\: #(.+)$'. [:m | '#', (m subexpression: 4), ' in #', (m subexpression: 2)]}.
		{ #categoryRemoved. '^([^ ]+) (class )?organization removeCategory\: #(.+)$'. [:m | '#', (m subexpression: 4), ' from #', (m subexpression: 2)]}.
		{ #categoryRenamed. '^([^ ]+) (class )?organization renameCategory\: #(.+) toBe\: #(.+)$'. [:m | '#', (m subexpression: 4), ' -> #', (m subexpression: 5), ' in #', (m subexpression: 2)]}.
		{ #class. '^[^ ]+ subclass\: #([\S]+).*category\: ''([^'']+)''$'. [:m | '#', (m subexpression: 2), ' in #', (m subexpression: 3)]}.
		{ #classMoved. '^SystemOrganization classify\: #(.+) under\: #(.+)$'. [:m | '#', (m subexpression: 2), ' to #', (m subexpression: 3)]}.
		{ #classRemoved. '^Smalltalk removeClassNamed\: #([^ ]+)$'. [:m | '#', (m subexpression: 2)]}.
		{ #classRenamed. '^Smalltalk renameClassNamed\: #([^ ]+) as\: #([^ ]+)$'. [:m | '#', (m subexpression: 2), ' -> #', (m subexpression: 3)]}.
		{ #methodRecategorized. '^([^ ]+) (class )?organization classify\: #(.+) under\: #(.+)$'. [:m | '#', (m subexpression: 4), ' to #', (m subexpression: 5)]}.
		{ #methodRemoved. '^([^ ]+) (class )?removeSelector\: #([^ ]+)$'. [:m | '#', (m subexpression: 4), ' from #', (m subexpression: 2)]}.
		{ #packageCreated. '^SystemOrganization addCategory\: #(.+)$'. [:m | '#', (m subexpression: 2)]}.
		{ #packageRemoved. '^SystemOrganization removeSystemCategory\: #(.+)$'. [:m | '#', (m subexpression: 2)]}.
		{ #packageRenamed. '^SystemOrganization renameCategory\: #(.+) toBe\: #(.+)$'. [:m | '#', (m subexpression: 2), ' -> #', (m subexpression: 3)]}.
	}