toolbuilder
buildMenuButtonsWith: builder
	| panelSpec showButton resetButton runShowButton|
	panelSpec := builder pluggablePanelSpec new
		layout: #horizontal;
		spacing: 1;
		frame: (LayoutFrame new
				leftFraction:0 offset:0;
				topFraction: 0 offset: 0;
				rightFraction: 1 offset: 0;
				bottomFraction: 0 offset: self buttonHeight);
		children: OrderedCollection new;
		yourself.
	resetButton := builder pluggableButtonSpec new.
	resetButton 
			model: self;
			label: 'reset';
			help: 'Reset the project' translated;
			action: #initializeBindings.
	showButton := builder pluggableButtonSpec new.
	showButton 
			model: self;
			label: 'show';
			help: 'Show current state of the project' translated;
			action: #showResult.		
	runShowButton := builder pluggableButtonSpec new.
	runShowButton 
			model: self;
			label: 'run & show';
			help: 'Reset, run script and show the result' translated;
			action: #showScriptResult.	
	panelSpec children addAll: {
		resetButton.
		showButton.
		runShowButton
	}.

	^panelSpec