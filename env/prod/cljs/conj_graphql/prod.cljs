(ns conj-graphql.prod
  (:require [conj-graphql.core :as core]))

;;ignore println statements in prod
(set! *print-fn* (fn [& _]))

(core/init!)
