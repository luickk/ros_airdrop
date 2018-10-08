
(cl:in-package :asdf)

(defsystem "gps_node-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "gps_raw" :depends-on ("_package_gps_raw"))
    (:file "_package_gps_raw" :depends-on ("_package"))
  ))