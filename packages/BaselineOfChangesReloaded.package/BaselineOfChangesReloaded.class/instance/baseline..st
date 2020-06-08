baseline
baseline: spec

	<baseline>
	spec for: #common do: [

		spec
			"reqs for SwaLint"
			project: 'RefactoringBrowser' with: [
				spec
					className: 'ConfigurationOfRefactoringBrowser';
					versionString: #'stable';
					loads: #('Core' );
					repository: 'http://www.squeaksource.com/MetacelloRepository' ];
			"SwaLint setup"
			package: 'SwaLint-Preferences' with: [
							spec
								file: 'SwaLint-Preferences-cypress.1';
								repository: 
										'github://hpi-swa-teaching/SwaLint:master/packages' ];
			package: 'SwaLint-Core' with: [spec
								file: 'SwaLint-Core-cypress.1';
								repository: 
										'github://hpi-swa-teaching/SwaLint:master/packages';
								requires: #('RefactoringBrowser' 'SwaLint-Preferences')];
			package: 'SwaLint-PlugIns' with: [ spec file: 'SwaLint-PlugIns-cypress.1';
								repository: 
										'github://hpi-swa-teaching/SwaLint:master/packages'; requires: 'SwaLint-Core' ];
									
			postLoadDoIt: #postLoad;
			
			"ChangesReloaded setup"
			package: 'ChangesReloaded-Core';
			package: 'ChangesReloaded-Tests' with: [ spec requires: #('ChangesReloaded-Core' 'SwaLint-Core' 'SwaLint-PlugIns') ].
			
		spec
			group: 'default' with: #('ChangesReloaded-Core');
			group: 'Tests' with: #('ChangesReloaded-Tests')]
	