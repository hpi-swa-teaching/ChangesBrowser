category & regex & attributes
categoryRegexAttributesList
	
	^ {
		{#categoryCreated. '^([^ ]+) (class )?organization addCategory\: #(.+)$'. [:m | {#category -> (m subexpression: 4). #class -> (m subexpression: 2) } asDictionary]}.
		{#categoryRemoved. '^([^ ]+) (class )?organization removeCategory\: #(.+)$'. [:m | {#category -> (m subexpression: 4). #class -> (m subexpression: 2) } asDictionary]}.
		{#categoryRenamed. '^([^ ]+) (class )?organization renameCategory\: #(.+) toBe\: #(.+)$'. [:m | {#oldCategory -> (m subexpression: 4). #newCategory -> (m subexpression: 5). #class -> (m subexpression: 2) } asDictionary]}.
		
		{#class. '^[^ ]+ subclass\: #([\S]+).*category\: ''([^'']+)''$'. [:m | {#class -> (m subexpression: 2). #package -> (m subexpression: 3) } asDictionary]}.
		{#classMoved. '^SystemOrganization classify\: #(.+) under\: #(.+)$'. [:m | {#class -> (m subexpression: 2). #package -> (m subexpression: 3) } asDictionary]}.
		{#classRemoved. '^Smalltalk removeClassNamed\: #([^ ]+)$'. [:m | {#class -> (m subexpression: 2) } asDictionary]}.
		{#classRenamed. '^Smalltalk renameClassNamed\: #([^ ]+) as\: #([^ ]+)$'. [:m | {#oldClass -> (m subexpression: 2). #newClass -> (m subexpression: 3) } asDictionary]}.
		
		{ #methodRecategorized. '^([^ ]+) (class )?organization classify\: #(.+) under\: #(.+)$'. [:m | {#method -> (m subexpression: 4). #category -> (m subexpression: 5) } asDictionary]}.
		{ #methodRemoved. '^([^ ]+) (class )?removeSelector\: #([^ ]+)$'. [:m | {#method -> (m subexpression: 4). #class -> (m subexpression: 2) } asDictionary]}.
		
		{ #packageCreated. '^SystemOrganization addCategory\: #(.+)$'. [:m | {#package -> (m subexpression: 2)} asDictionary]}.
		{ #packageRemoved. '^SystemOrganization removeSystemCategory\: #(.+)$'. [:m | {#package -> (m subexpression: 2)} asDictionary]}.
		{ #packageRenamed. '^SystemOrganization renameCategory\: #(.+) toBe\: #(.+)$'. [:m | {#oldPackage -> (m subexpression: 2). #newPackage -> (m subexpression: 3) } asDictionary]}.
	}