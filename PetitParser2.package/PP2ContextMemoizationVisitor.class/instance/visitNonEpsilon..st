visiting
visitNonEpsilon: node
	node child contextChanges isNotContextChange ifTrue: [ 
		node memoizationStrategy: PP2CFMemoization new.
		^ 	super visitAnd: node.
	].

	^ 	super visitAnd: node.
