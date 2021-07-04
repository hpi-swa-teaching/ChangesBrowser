categories & attributes
categoryRegexAttributesList
	
	^ {
		{#categoryCreated. '^([^ ]+) (class )?organization addCategory\: #(.+)$'. [:m | {#category -> (m subexpression: 4). #class -> (m subexpression: 2) } as: Dictionary]}.
		{#categoryRemoved. '^([^ ]+) (class )?organization removeCategory\: #(.+)$'. [:m | {#category -> (m subexpression: 4). #class -> (m subexpression: 2) } as: Dictionary]}.
		{#categoryRenamed. '^([^ ]+) (class )?organization renameCategory\: #(.+) toBe\: #(.+)$'. [:m | {#oldCategory -> (m subexpression: 4). #newCategory -> (m subexpression: 5). #class -> (m subexpression: 2) } as: Dictionary]}.
		
		{#class. '^[^ ]+ subclass\: #([\S]+).*category\: ''([^'']+)''$'. [:m | {#class -> (m subexpression: 2). #package -> (m subexpression: 3) } as: Dictionary]}.
		{#classMoved. '^SystemOrganization classify\: #(.+) under\: #(.+)$'. [:m | {#class -> (m subexpression: 2). #package -> (m subexpression: 3) } as: Dictionary]}.
		{#classRemoved. '^Smalltalk removeClassNamed\: #([^ ]+)$'. [:m | {#class -> (m subexpression: 2) } as: Dictionary]}.
		{#classRenamed. '^Smalltalk renameClassNamed\: #([^ ]+) as\: #([^ ]+)$'. [:m | {#oldClass -> (m subexpression: 2). #newClass -> (m subexpression: 3) } as: Dictionary]}.
		
		{#methodRecategorized. '^([^ ]+) (class )?organization classify\: #(.+) under\: #(.+)$'. [:m | {#method -> (m subexpression: 4). #category -> (m subexpression: 5) } as: Dictionary]}.
		{#methodRemoved. '^([^ ]+) (class )?removeSelector\: #([^ ]+)$'. [:m | {#method -> (m subexpression: 4). #class -> (m subexpression: 2) } as: Dictionary]}.
		{#methodRenamed. '^Rename Method$'. [:m | Dictionary new]}.
		
		{#packageCreated. '^SystemOrganization addCategory\: #(.+)$'. [:m | {#package -> (m subexpression: 2)} as: Dictionary]}.
		{#packageRemoved. '^SystemOrganization removeSystemCategory\: #(.+)$'. [:m | {#package -> (m subexpression: 2)} as: Dictionary]}.
		{#packageRenamed. '^SystemOrganization renameCategory\: #(.+) toBe\: #(.+)$'. [:m | {#oldPackage -> (m subexpression: 2). #newPackage -> (m subexpression: 3) } as: Dictionary]}.
	}