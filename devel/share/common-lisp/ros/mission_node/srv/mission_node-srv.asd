
(cl:in-package :asdf)

(defsystem "mission_node-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "list_missions" :depends-on ("_package_list_missions"))
    (:file "_package_list_missions" :depends-on ("_package"))
    (:file "start_mission" :depends-on ("_package_start_mission"))
    (:file "_package_start_mission" :depends-on ("_package"))
  ))