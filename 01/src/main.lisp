(defpackage #:basic-test
  (:use :cl))

(in-package #:basic-test)

(defun f1()
  (print "f1 called...")
  (sleep 2))

(defun f2()
  (print "Calling f1...")
  (f1))

(defun main ()
  (f2))



(defun fib (n)
  (if (< n 2)
      n
    (+ (fib (- n 1))
       (fib (- n 2)))))

(defun many (n)
  (values n (* n 2) (* n 3)))


(let ((str "Hellloooo, world!"))
  (string-upcase str))

(let ((x 1)
      (y 5))
  (+ x y))

(let* ((x 1)
      (y (+ x 1)))
  y)
