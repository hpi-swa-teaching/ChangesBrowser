baseline
baseline: spec
	<baseline>
	spec for: #common do: [
		spec 
			package: 'Changes-Core';
			package: 'Changes-Tests' with: [ spec requires: #('default') ].
		spec
			group: 'default' with: #('Changes-Core')].