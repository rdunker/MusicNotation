toolbuilder
buildStatusPaneWith: aBuilder
	^ aBuilder pluggableInputFieldSpec new
		model: self;
		textColor: #statusColor;
		getText: #statusMessage;
		readOnly: true;
		indicateUnacceptedChanges: false;
		frame: self statusFrame;
		yourself