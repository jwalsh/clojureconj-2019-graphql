dev: # Development mode
	lein figwheel devcards

dev-clean:
	lein do clean, run

styles: # Style compilation
	lein less4j auto

repl:
	lein repl

test:
	lein cljsbuild test

circle:
	lein do test, uberjar

release:
	lein do clean, uberjar
