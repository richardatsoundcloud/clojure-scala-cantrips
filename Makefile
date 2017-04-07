clean:
	rm -rf src/clojure

compile: clean
	cd src && scalac ./*/scala.scala

show-primary-constructor:
	javap src/clojure/scala/interop/primary/constructor/TestClass.class

run-primary-constructor:
	lein run -m primary-constructor.clojure

show-nary-constructor:
	javap src/clojure/scala/interop/nary/constructor/TestClass.class

run-nary-constructor:
	lein run -m n-ary-constructor.clojure
