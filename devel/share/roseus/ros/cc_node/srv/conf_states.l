;; Auto-generated. Do not edit!


(when (boundp 'cc_node::conf_states)
  (if (not (find-package "CC_NODE"))
    (make-package "CC_NODE"))
  (shadow 'conf_states (find-package "CC_NODE")))
(unless (find-package "CC_NODE::CONF_STATES")
  (make-package "CC_NODE::CONF_STATES"))
(unless (find-package "CC_NODE::CONF_STATESREQUEST")
  (make-package "CC_NODE::CONF_STATESREQUEST"))
(unless (find-package "CC_NODE::CONF_STATESRESPONSE")
  (make-package "CC_NODE::CONF_STATESRESPONSE"))

(in-package "ROS")





(defclass cc_node::conf_statesRequest
  :super ros::object
  :slots (_airborne _in_mission _landing_phase ))

(defmethod cc_node::conf_statesRequest
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

(defclass cc_node::conf_statesResponse
  :super ros::object
  :slots (_success ))

(defmethod cc_node::conf_statesResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass cc_node::conf_states
  :super ros::object
  :slots ())

(setf (get cc_node::conf_states :md5sum-) "41b8919b25873c4fbe3311c2af4f962d")
(setf (get cc_node::conf_states :datatype-) "cc_node/conf_states")
(setf (get cc_node::conf_states :request) cc_node::conf_statesRequest)
(setf (get cc_node::conf_states :response) cc_node::conf_statesResponse)

(defmethod cc_node::conf_statesRequest
  (:response () (instance cc_node::conf_statesResponse :init)))

(setf (get cc_node::conf_statesRequest :md5sum-) "41b8919b25873c4fbe3311c2af4f962d")
(setf (get cc_node::conf_statesRequest :datatype-) "cc_node/conf_statesRequest")
(setf (get cc_node::conf_statesRequest :definition-)
      "bool airborne
bool in_mission
bool landing_phase
---
bool success

")

(setf (get cc_node::conf_statesResponse :md5sum-) "41b8919b25873c4fbe3311c2af4f962d")
(setf (get cc_node::conf_statesResponse :datatype-) "cc_node/conf_statesResponse")
(setf (get cc_node::conf_statesResponse :definition-)
      "bool airborne
bool in_mission
bool landing_phase
---
bool success

")



(provide :cc_node/conf_states "41b8919b25873c4fbe3311c2af4f962d")


