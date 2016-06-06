baseline
baseline: spec
	<baseline>
	spec for: #common do: [
		spec 
			package: 'Changes-Core';
			package: 'Changes-Tests' with: [ spec requires: #('default') ];
			package: 'Icons' with: [ spec repository: 'http://www.hpi.uni-potsdam.de/hirschfeld/squeaksource/SwaUtilities' ];
			baseline: 'Signals' with: [ spec repository: 'github://marceltaeumel/signals:master/repository' ];
			baseline: 'Widgets' with: [	spec repository: 'github://hpi-swa/widgets:master/repository' ].
		spec
			group: 'default' with: #('Changes-Core','Icons','Signals','Widgets');
			group: 'Tests' with: #('Changes-Tests','Icons','Signals','Widgets');
			group: 'TravisCI' with: #('Changes-Tests')].