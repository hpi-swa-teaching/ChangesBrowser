baseline
baseline: spec
	<baseline>
	spec for: #common do: [
		spec 
			package: 'Changes-Core';
			package: 'Changes-Tests' with: [ spec requires: #('Changes-Core') ].
			
		spec
			group: 'default' with: #('Changes-Core');
			group: 'Tests' with: #('Changes-Tests')].