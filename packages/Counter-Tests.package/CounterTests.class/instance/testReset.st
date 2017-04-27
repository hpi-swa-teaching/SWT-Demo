as yet unclassified
testReset
	self assert: 1 equals: counter currentValue.
	10 timesRepeat: [counter increment].
	self assert: counter currentValue > 2.
	counter reset.
	self assert: 1 equals: counter currentValue.
	
	