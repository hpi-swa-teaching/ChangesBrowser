mocking
createChangeRecordClassComment

	^ ChangeRecord new
		file: (SourceFiles at: 2) readOnlyCopy
		position: 43988883
		type: #classComment
		class: #CRBrowser
		category: nil
		meta: false
		stamp: 'SV 5/29/2020 23:46';
		yourself