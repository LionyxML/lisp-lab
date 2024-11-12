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


;; ~%  is equal to \n
(defun greet (name)
  (format t "Hello, ~A!~%" name))

(let ((lst '(1 2 3)))
  (format t "The list is: ~A~%" lst))

(let ((lst '(1 2 3)))
  (format t "The list is: ~S~%" lst))

(let ((num 42))
  (format t "Decimal number: ~D~%" num))

(let ((num 3.14159))
  (format t "Pi: ~F~%" num))

(format t "Line 1~%Line 2~%")

(format t "Items: ~<Item ~D~>~%" '(1 2 3))

(let ((num 42))
  (format t "In human language 16: ~R~%" num 16))

(format t "List: ~@{~A~^, ~}~%" '(1 2 3))

(let ((num 42))
  (format t "Binary representation of ~D is: ~B~%" num num))

(let ((num 42))
  (format t "Binary representation (8 bits) of ~D is: ~8,'0B~%" num num))


;; When to Use Asterisks
;; Global Variables: Use asterisks for variables that need to be
;;  accessible globally throughout your Lisp program.

;; Special Variables: Use asterisks for variables that hold special
;;  values or configurations that are not confined to a specific function
;; or lexical scope.

(defvar *my-variable* 42)


(defun positive-or-negative (num)
  (if (> num 0)
      (format t "Positive~%")
      (format t "Negative~%")))

(format t "Max positive single float: ~E~%" most-positive-single-float)
(format t "Min negative single float: ~E~%" most-negative-single-float)


