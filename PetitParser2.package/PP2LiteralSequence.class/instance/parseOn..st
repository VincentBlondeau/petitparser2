parsing
parseOn: aPP2Context
	| position |
	position := aPP2Context position.
	(node literal = (aPP2Context next: node size)) ifTrue: [  
		^ node literal
	].
	aPP2Context position: position.
	^ PP2Failure message: 'literal not found' context: aPP2Context