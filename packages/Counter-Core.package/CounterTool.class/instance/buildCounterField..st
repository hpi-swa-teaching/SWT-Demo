as yet unclassified
buildCounterField: builder
	^ builder pluggableTextSpec new
		model: self;
		getText: #counterValue;
		readOnly: true;
		frame: (0@0 corner: 1@0.5)