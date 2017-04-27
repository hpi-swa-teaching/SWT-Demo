as yet unclassified
testIncrement
	self assert: 1 equals: counter currentValue.
	counter increment.
	self assert: 2 equals: counter currentValue.
	