(ns immutable-fields.clojure
  (:import (clojure.scala.interop.immutable.fields TestClass)))

(defn -main [& _]
  (let [instance (TestClass. 1)
        attr1 (.attr1 instance)
        attr2 (.attr2 instance)]
    (println attr1)   ; 1
    (println attr2))) ; 2
