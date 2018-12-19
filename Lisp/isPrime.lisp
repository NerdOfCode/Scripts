;; Check if a number is prime or not
;; Written in: elisp
;; Updated: 12/19/18

(defun isPrime(numberToTest)
  "Check if a given number is prime or not!"
  (setq counter 2)
  (while (< counter numberToTest)
    (if (equal (% numberToTest counter) 0)
	(message "not prime: %d" numberToTest)
      (setq counter (+ counter 1))))
  (message "prime: %d" numberToTest))

(isPrime 3301)
