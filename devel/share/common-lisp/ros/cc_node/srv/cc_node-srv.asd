
(cl:in-package :asdf)

(defsystem "cc_node-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "a_operation_stop_action_and_hover" :depends-on ("_package_a_operation_stop_action_and_hover"))
    (:file "_package_a_operation_stop_action_and_hover" :depends-on ("_package"))
    (:file "a_operation_turn_to_direction" :depends-on ("_package_a_operation_turn_to_direction"))
    (:file "_package_a_operation_turn_to_direction" :depends-on ("_package"))
    (:file "a_operation_landing" :depends-on ("_package_a_operation_landing"))
    (:file "_package_a_operation_landing" :depends-on ("_package"))
    (:file "a_operation_liftoff" :depends-on ("_package_a_operation_liftoff"))
    (:file "_package_a_operation_liftoff" :depends-on ("_package"))
    (:file "manual_action" :depends-on ("_package_manual_action"))
    (:file "_package_manual_action" :depends-on ("_package"))
    (:file "a_operation_fly_to_pos" :depends-on ("_package_a_operation_fly_to_pos"))
    (:file "_package_a_operation_fly_to_pos" :depends-on ("_package"))
  ))