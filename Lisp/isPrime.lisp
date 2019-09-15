(defun isPrime (n)
  "Determine if n is a prime number or not"
  (if (<= n 2) 
    (return-from isPrime nil))
  (loop for x from 2 to (floor (SQRT n)) 
	do
	(if (equal (mod n x) 0)
	  (return-from isPrime nil))(return-from isPrime t)))

(defvar n)
(setq n 1)
(if (isPrime n)
  (format t "Prime: ~d~%"
	  n)
  (format t "Not Prime: ~d~%"
	  n))
