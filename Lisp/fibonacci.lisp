(defun fib ()
  (defvar x 1)
  (defvar y 1)
  (defvar z (+ x y))
  (loop
	(format t "~d~%~d~%~d~%"
		x y z)
	(setq x (+ y z))
	(setq y (+ x z))
	(setq z (+ x y))
    ))

(fib)
