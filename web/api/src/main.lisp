(ql:quickload '(:hunchentoot :cl-json))

(defparameter *httpd-port* 3000)
(defvar *server* nil)

(defun start-server ()
  (when *server*
    (warn "Server is already running on port ~A" *httpd-port*)
    (return-from start-server))

  (setf *server* (make-instance 'hunchentoot:easy-acceptor :port *httpd-port*))
  (hunchentoot:start *server*)
  (format t "Server started on port ~A~%" *httpd-port*))

(defun stop-server ()
  (unless *server*
    (warn "No server is currently running.")
    (return-from stop-server))

  (hunchentoot:stop *server*)
  (setf *server* nil)
  (format t "Server stopped.~%"))

(hunchentoot:define-easy-handler (greet :uri "/") ()
  (format nil "<html><body><h1>Hello World!</h1></body></html>"))

;; To start the server, call (start-server)
;; To stop the server, call (stop-server)
