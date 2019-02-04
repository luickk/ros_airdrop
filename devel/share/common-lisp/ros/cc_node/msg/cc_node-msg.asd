
(cl:in-package :asdf)

(defsystem "cc_node-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "drone_states" :depends-on ("_package_drone_states"))
    (:file "_package_drone_states" :depends-on ("_package"))
  ))