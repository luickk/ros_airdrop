;; Auto-generated. Do not edit!


(when (boundp 'mission_node::start_mission)
  (if (not (find-package "MISSION_NODE"))
    (make-package "MISSION_NODE"))
  (shadow 'start_mission (find-package "MISSION_NODE")))
(unless (find-package "MISSION_NODE::START_MISSION")
  (make-package "MISSION_NODE::START_MISSION"))
(unless (find-package "MISSION_NODE::START_MISSIONREQUEST")
  (make-package "MISSION_NODE::START_MISSIONREQUEST"))
(unless (find-package "MISSION_NODE::START_MISSIONRESPONSE")
  (make-package "MISSION_NODE::START_MISSIONRESPONSE"))

(in-package "ROS")





(defclass mission_node::start_missionRequest
  :super ros::object
  :slots (_mission_name ))

(defmethod mission_node::start_missionRequest
  (:init
   (&key
    ((:mission_name __mission_name) "")
    )
   (send-super :init)
   (setq _mission_name (string __mission_name))
   self)
  (:mission_name
   (&optional __mission_name)
   (if __mission_name (setq _mission_name __mission_name)) _mission_name)
  (:serialization-length
   ()
   (+
    ;; string _mission_name
    4 (length _mission_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _mission_name
       (write-long (length _mission_name) s) (princ _mission_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _mission_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _mission_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass mission_node::start_missionResponse
  :super ros::object
  :slots (_mission_status _operation_status _action_status ))

(defmethod mission_node::start_missionResponse
  (:init
   (&key
    ((:mission_status __mission_status) 0)
    ((:operation_status __operation_status) 0)
    ((:action_status __action_status) 0)
    )
   (send-super :init)
   (setq _mission_status (round __mission_status))
   (setq _operation_status (round __operation_status))
   (setq _action_status (round __action_status))
   self)
  (:mission_status
   (&optional __mission_status)
   (if __mission_status (setq _mission_status __mission_status)) _mission_status)
  (:operation_status
   (&optional __operation_status)
   (if __operation_status (setq _operation_status __operation_status)) _operation_status)
  (:action_status
   (&optional __action_status)
   (if __action_status (setq _action_status __action_status)) _action_status)
  (:serialization-length
   ()
   (+
    ;; int64 _mission_status
    8
    ;; int64 _operation_status
    8
    ;; int64 _action_status
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _mission_status
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _mission_status (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _mission_status) (= (length (_mission_status . bv)) 2)) ;; bignum
              (write-long (ash (elt (_mission_status . bv) 0) 0) s)
              (write-long (ash (elt (_mission_status . bv) 1) -1) s))
             ((and (class _mission_status) (= (length (_mission_status . bv)) 1)) ;; big1
              (write-long (elt (_mission_status . bv) 0) s)
              (write-long (if (>= _mission_status 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _mission_status s)(write-long (if (>= _mission_status 0) 0 #xffffffff) s)))
     ;; int64 _operation_status
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _operation_status (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _operation_status) (= (length (_operation_status . bv)) 2)) ;; bignum
              (write-long (ash (elt (_operation_status . bv) 0) 0) s)
              (write-long (ash (elt (_operation_status . bv) 1) -1) s))
             ((and (class _operation_status) (= (length (_operation_status . bv)) 1)) ;; big1
              (write-long (elt (_operation_status . bv) 0) s)
              (write-long (if (>= _operation_status 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _operation_status s)(write-long (if (>= _operation_status 0) 0 #xffffffff) s)))
     ;; int64 _action_status
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _action_status (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _action_status) (= (length (_action_status . bv)) 2)) ;; bignum
              (write-long (ash (elt (_action_status . bv) 0) 0) s)
              (write-long (ash (elt (_action_status . bv) 1) -1) s))
             ((and (class _action_status) (= (length (_action_status . bv)) 1)) ;; big1
              (write-long (elt (_action_status . bv) 0) s)
              (write-long (if (>= _action_status 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _action_status s)(write-long (if (>= _action_status 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _mission_status
#+(or :alpha :irix6 :x86_64)
      (setf _mission_status (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _mission_status (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _operation_status
#+(or :alpha :irix6 :x86_64)
      (setf _operation_status (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _operation_status (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _action_status
#+(or :alpha :irix6 :x86_64)
      (setf _action_status (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _action_status (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass mission_node::start_mission
  :super ros::object
  :slots ())

(setf (get mission_node::start_mission :md5sum-) "fe261445a9489aed43e3808ba8261eed")
(setf (get mission_node::start_mission :datatype-) "mission_node/start_mission")
(setf (get mission_node::start_mission :request) mission_node::start_missionRequest)
(setf (get mission_node::start_mission :response) mission_node::start_missionResponse)

(defmethod mission_node::start_missionRequest
  (:response () (instance mission_node::start_missionResponse :init)))

(setf (get mission_node::start_missionRequest :md5sum-) "fe261445a9489aed43e3808ba8261eed")
(setf (get mission_node::start_missionRequest :datatype-) "mission_node/start_missionRequest")
(setf (get mission_node::start_missionRequest :definition-)
      "string mission_name
---
int64 mission_status
int64 operation_status
int64 action_status

")

(setf (get mission_node::start_missionResponse :md5sum-) "fe261445a9489aed43e3808ba8261eed")
(setf (get mission_node::start_missionResponse :datatype-) "mission_node/start_missionResponse")
(setf (get mission_node::start_missionResponse :definition-)
      "string mission_name
---
int64 mission_status
int64 operation_status
int64 action_status

")



(provide :mission_node/start_mission "fe261445a9489aed43e3808ba8261eed")


