testing
testMatchSubclassRecords

	| record1 record2 record3 |
	
	record1 := 'CodeHolder subclass: #ChangesBrowser2
	instanceVariableNames: ', $', 'variable', $',
	'classVariableNames: ', $', 'ClassVariable', $',
	'poolDictionaries: ', $', $',
	'category: ', $', 'Changes-Core', $'.
	self assert: (record1 matchesRegex: CHBrowser newClassesRegex) equals: true.
	
	record2 := 'Smalltalk removeClassNamed: #ChangesBrowser2'.
	self assert: (record2 matchesRegex: CHBrowser newClassesRegex) equals: false.
	
	"The difference to record1 is, that a space is missing --> this would be a corrupted record"
	record3 := 'CodeHoldersubclass: #ChangesBrowser2
	instanceVariableNames: ', $', 'variable', $',
	'classVariableNames: ', $', 'ClassVariable', $',
	'poolDictionaries: ', $', $',
	'category: ', $', 'Changes-Core', $'.
	self assert: (record3 matchesRegex: CHBrowser newClassesRegex) equals: false.
	
	