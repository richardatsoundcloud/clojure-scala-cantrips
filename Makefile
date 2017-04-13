clean:
	rm -rf src/clojure

compile: clean
	cd src && scalac ./*/scala.scala

show-primary-constructor: compile
	javap src/clojure/scala/interop/primary/constructor/TestClass.class

run-primary-constructor:
	lein run -m primary-constructor.clojure

show-nary-constructor: compile
	javap src/clojure/scala/interop/nary/constructor/TestClass.class

run-nary-constructor:
	lein run -m n-ary-constructor.clojure

show-immutable-fields: compile
	javap src/clojure/scala/interop/immutable/fields/TestClass.class

run-immutable-fields:
	lein run -m immutable-fields.clojure

show-mutable-fields: compile
	javap src/clojure/scala/interop/mutable/fields/TestClass.class

run-mutable-fields:
	lein run -m mutable-fields.clojure
