
(cl:in-package :asdf)

(defsystem "mission_node-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "start_mission" :depends-on ("_package_start_mission"))
    (:file "_package_start_mission" :depends-on ("_package"))
  ))