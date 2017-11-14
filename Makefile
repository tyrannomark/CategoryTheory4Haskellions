

sample.lambda: processor.hs sample.hs
	ghc -package ghc -package ghc-paths processor.hs
	./processor > sample.lambda
