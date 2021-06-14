do it descriptions
classCreatedOrChangedDescriptionOf: anRxMatcher

	^ 'class: #', (anRxMatcher subexpression: 2), ' in #', (anRxMatcher subexpression: 3)