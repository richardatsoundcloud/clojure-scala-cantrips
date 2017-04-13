(ns mutable-fields.clojure
  (:import (clojure.scala.interop.mutable.fields TestClass)))

(defn -main [& _]

  ;accessing mutable fields
  (let [instance (TestClass. 1)
        attr1 (.attr1 instance)
        attr2 (.attr2 instance)]
    (println attr1)   ; 1
    (println attr2))  ; 2

  ;mutating the fields
  (let [instance (TestClass. 10)]
    (println (.attr1 instance)) ; 10
    (.attr1_$eq instance 99)
    (println (.attr1 instance)))) ; 99
