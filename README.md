# Clojure-Scala Cantrips

This document covers couple of tips and tricks on how to consume scala apis from a clojure codebase.

Clojure and scala, both being laguages that run on jvm, have a common denominator. That is java byte code. In order to use a scala library from clojure code we need to know two things;
  * How does a scala api manifest itselfs in java byte code
  * How to consume a java api from clojure code

The internals of scala to java translation can be uncovered by using the [javap](http://docs.oracle.com/javase/7/docs/technotes/tools/windows/javap.html) tool. The knowledge about clojure - java interoperability is drawn from [its documentation](https://clojure.org/reference/java_interop). All of the examples shown in this document are put together based on these two resources.


## Who is this document for?

This document covers the basic usecases of clojure - scala interoperability. People who want to learn about how the scala structures are represented in java and how the clojure code interacts with them would be interested.

## Why?

This document is more for educational purposes rather than production usage. There are libraries out there that does a good job in providing the functionality covered here. This document is for understanding the underlying semantics of clojure - scala interoperability.


## Let’s get started


### Accessing the constructor

Instantiating regular scala classes is as straightforward as instantiating a java class. Given the class;
```scala
class TestClass(param1: Int, param2: String)
```

Scala generates the java code below;
```java
public class TestClass {
  public TestClass(int, java.lang.String);
}
```

And the clojure code to instantiate this class looks like 
```clojure
(new TestClass Param1 param2)

;or the shortcut is
(TestClass. Param1 param2)
```



