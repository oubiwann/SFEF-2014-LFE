clean:
	rm -rf resources/public target/stale target/classes

watch:
	@JVM_OPTS="-Xmx1024m -server" boot watch hoplon

dev:
	@lein run

build:
	JVM_OPTS="-Xmx1024m -server" boot hoplon

repl-rhino:
	lein trampoline cljsbuild repl-rhino

repl-browser:
	lein trampoline cljsbuild repl-listen
