do it regex
classCreatedOrChangedRegex      
	
	^ '^[^ ]+ subclass\: #([\S]+).*category\: ''([^'']+)''$' asRegex