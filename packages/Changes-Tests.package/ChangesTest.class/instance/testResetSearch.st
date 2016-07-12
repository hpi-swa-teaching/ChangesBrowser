testing-toolbuilder
testResetSearch
|imageStates|


	self loadSixthChangeFile.
	self changesBrowser changesBrowserLogic loadImageStatesContaining: 'kekse'.
	imageStates := self changesBrowser changesBrowserLogic imageStateListModel list.
	self
		assert: (imageStates first endsWith: '6');
		assert: (imageStates second endsWith: '4');
		assert: (imageStates third endsWith: '3');
		assert: (imageStates fourth endsWith: '2');
		assert: (imageStates fifth endsWith: '1');
		assert: (imageStates sixth endsWith: '0').

	self changesBrowser changesBrowserLogic testMode: false.
	self changesBrowser resetSearch.
	imageStates := self changesBrowser changesBrowserLogic imageStateListModel list.
	self
		assert: (imageStates first endsWith: '6');
		assert: (imageStates second endsWith: '5');
		assert: (imageStates third endsWith: '4');
		assert: (imageStates fourth  endsWith: '3');
		assert: (imageStates fifth  endsWith: '2');
		assert: (imageStates sixth  endsWith: '1');
		assert: (imageStates seventh endsWith: '0').