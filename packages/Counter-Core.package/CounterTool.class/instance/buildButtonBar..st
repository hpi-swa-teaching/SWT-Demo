as yet unclassified
buildButtonBar: builder
	^ builder pluggablePanelSpec new
		layout: #horizontal;
		children: {
			builder pluggableActionButtonSpec new
				model: self;
				label: 'Increment';
				action: #actionIncrement;
				help: 'Increment the counter.'.
			builder pluggableActionButtonSpec new
				model: self;
				label: 'Reset';
				action: #actionReset;
				help: 'Reset the counter.'.
			};
		frame: (0@0.5 corner: 1@1)