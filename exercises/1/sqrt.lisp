(defun square-root (n)
  (defun sqr-iter (n guess)
    (if (within .001 (* guess guess) n)
	guess
	(sqr-iter n (/ (+ guess (/ n guess)) 2))))
  (sqr-iter n 1))

(defun within (a b c)
  (< (abs (- b c)) a))
