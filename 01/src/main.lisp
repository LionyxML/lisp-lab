(defpackage #:basic-test
  (:use :cl))

(in-package #:basic-test)
;;(ql:quickload :clack)
;;(ql:quickload :ningle)

(defun basic-test ()
  (defvar x 10)
  (print x))

;;(defvar app (make-instance 'ningle:app))
