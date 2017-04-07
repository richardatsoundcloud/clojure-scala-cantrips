(ns primary-constructor.clojure
  (:import (clojure.scala.interop.primary.constructor TestClass)))

(defn -main [& _]

  (let [instance1 (new TestClass 1 "test")
        instance2 (TestClass. 1 "test")] ;the shorthand notation

        (println instance1)   ;TestClass@
        (println instance2))) ;TestClass@
