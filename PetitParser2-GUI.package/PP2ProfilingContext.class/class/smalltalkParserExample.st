as yet unclassified
smalltalkParserExample
	<gtExample>
	<label: 'smalltalkParser profiling context'>
	
	| inputs parser parsingContext |
	inputs := PP2Sources current smalltalkSourcesProfiling.
	parser := PP2SmalltalkParser new optimize.
	parsingContext := PP2ProfilingContext new.
	
	inputs do: [ :input |
		parser parse: input withContext: parsingContext
	].
	^ parsingContext