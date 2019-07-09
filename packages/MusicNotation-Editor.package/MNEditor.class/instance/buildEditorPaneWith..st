toolbuilder
buildEditorPaneWith: aBuilder
	^ aBuilder pluggablePanelSpec new
		frame: (0@0 corner: 1@1);
		children: { self buildCodePaneWith: aBuilder .
			self buildStatusPaneWith: aBuilder };
		yourself