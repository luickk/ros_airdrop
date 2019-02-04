;; Auto-generated. Do not edit!


(when (boundp 'cc_node::drone_states)
  (if (not (find-package "CC_NODE"))
    (make-package "CC_NODE"))
  (shadow 'drone_states (find-package "CC_NODE")))
(unless (find-package "CC_NODE::DRONE_STATES")
  (make-package "CC_NODE::DRONE_STATES"))

(in-package "ROS")
;;//! \htmlinclude drone_states.msg.html


(defclass cc_node::drone_states
  :super ros::object
  :slots (_airborne _in_mission _landing_phase ))

(defmethod cc_node::drone_states
  (:init
   (&key
    ((:airborne __airborne) nil)
    ((:in_mission __in_mission) nil)
    ((:landing_phase __landing_phase) nil)
    )
   (send-super :init)
   (setq _airborne __airborne)
   (setq _in_mission __in_mission)
   (setq _landing_phase __landing_phase)
   self)
  (:airborne
   (&optional __airborne)
   (if __airborne (setq _airborne __airborne)) _airborne)
  (:in_mission
   (&optional __in_mission)
   (if __in_mission (setq _in_mission __in_mission)) _in_mission)
  (:landing_phase
   (&optional __landing_phase)
   (if __landing_phase (setq _landing_phase __landing_phase)) _landing_phase)
  (:serialization-length
   ()
   (+
    ;; bool _airborne
    1
    ;; bool _in_mission
    1
    ;; bool _landing_phase
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _airborne
       (if _airborne (write-byte -1 s) (write-byte 0 s))
     ;; bool _in_mission
       (if _in_mission (write-byte -1 s) (write-byte 0 s))
     ;; bool _landing_phase
       (if _landing_phase (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _airborne
     (setq _airborne (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _in_mission
     (setq _in_mission (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _landing_phase
     (setq _landing_phase (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get cc_node::drone_states :md5sum-) "1af6d97362fd29242bfa3658b1190ad5")
(setf (get cc_node::drone_states :datatype-) "cc_node/drone_states")
(setf (get cc_node::drone_states :definition-)
      "bool airborne
bool in_mission
bool landing_phase

")



(provide :cc_node/drone_states "1af6d97362fd29242bfa3658b1190ad5")


