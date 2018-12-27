
(cl:in-package :asdf)

(defsystem "battery_node-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "bat_stat" :depends-on ("_package_bat_stat"))
    (:file "_package_bat_stat" :depends-on ("_package"))
  ))