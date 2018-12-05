
(cl:in-package :asdf)

(defsystem "rosauth-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Authentication" :depends-on ("_package_Authentication"))
    (:file "_package_Authentication" :depends-on ("_package"))
  ))