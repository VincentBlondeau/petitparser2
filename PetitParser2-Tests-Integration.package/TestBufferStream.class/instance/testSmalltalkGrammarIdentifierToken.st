tests - smalltalk
testSmalltalkGrammarIdentifierToken
	parser := PPSmalltalkGrammar new identifierToken asPetit2Parser.
	stream := PP2BufferStream on: (MinimalStream	on: 'foo').
		
	result := parser parse: stream.
	self assert: result isPetit2Success.
	self assert: result value inputValue = 'foo'.