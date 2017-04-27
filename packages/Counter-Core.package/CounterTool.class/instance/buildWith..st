as yet unclassified
buildWith: builder
	^ builder build: (builder pluggableWindowSpec new
		model: self;
		extent: 200@100;
		label: #labelString;
		children: {
			self buildCounterField: builder.
			self buildButtonBar: builder
		})