(import hyrule [inc])

(defn binary-search [arr x low high]
  (if (>= high low)
    (do
      (setv mid (// (+ high low) 2))
      (cond
        (= (get arr mid) x) mid
        (> (get arr mid) x) (binary-search arr x low (- mid 1))
        True (binary-search arr x (+ mid 1) high)
      )
    )
    -1
   )
)

(defn bs [arr x]
  (binary-search arr x 0 (- (len arr) 1))
)

(setv arr [3 6 7 10 14 19 21 25 36])
(print f"Array == {arr}")
(print f"The index of 7 is {(bs arr 7)}")

(defn reduce [col f]
  (let [result 0]
    (for [a col]
      (setv result (+ (f a) result)))
    result
  ) 
)

(setv list [])
(setv aa [[3 6 7 10 14 19 21 25 36] [4 7 8 11 15 20 22 26 37] [0 1 2 3 4 5 6 7 9 12 16 22]])
(for [a aa]
  (.append list (bs a 7))
)
(print list)

(print (reduce list inc))
(print (reduce list (fn [x] (+ x 1))))