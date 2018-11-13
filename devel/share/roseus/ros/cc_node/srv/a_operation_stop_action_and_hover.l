;; Auto-generated. Do not edit!


(when (boundp 'cc_node::a_operation_stop_action_and_hover)
  (if (not (find-package "CC_NODE"))
    (make-package "CC_NODE"))
  (shadow 'a_operation_stop_action_and_hover (find-package "CC_NODE")))
(unless (find-package "CC_NODE::A_OPERATION_STOP_ACTION_AND_HOVER")
  (make-package "CC_NODE::A_OPERATION_STOP_ACTION_AND_HOVER"))
(unless (find-package "CC_NODE::A_OPERATION_STOP_ACTION_AND_HOVERREQUEST")
  (make-package "CC_NODE::A_OPERATION_STOP_ACTION_AND_HOVERREQUEST"))
(unless (find-package "CC_NODE::A_OPERATION_STOP_ACTION_AND_HOVERRESPONSE")
  (make-package "CC_NODE::A_OPERATION_STOP_ACTION_AND_HOVERRESPONSE"))

(in-package "ROS")





(defclass cc_node::a_operation_stop_action_and_hoverRequest
  :super ros::object
  :slots (_a_operation_pausing_reason ))

(defmethod cc_node::a_operation_stop_action_and_hoverRequest
  (:init
   (&key
    ((:a_operation_pausing_reason __a_operation_pausing_reason) "")
    )
   (send-super :init)
   (setq _a_operation_pausing_reason (string __a_operation_pausing_reason))
   self)
  (:a_operation_pausing_reason
   (&optional __a_operation_pausing_reason)
   (if __a_operation_pausing_reason (setq _a_operation_pausing_reason __a_operation_pausing_reason)) _a_operation_pausing_reason)
  (:serialization-length
   ()
   (+
    ;; string _a_operation_pausing_reason
    4 (length _a_operation_pausing_reason)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _a_operation_pausing_reason
       (write-long (length _a_operation_pausing_reason) s) (princ _a_operation_pausing_reason s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _a_operation_pausing_reason
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _a_operation_pausing_reason (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass cc_node::a_operation_stop_action_and_hoverResponse
  :super ros::object
  :slots (_a_operation_status ))

(defmethod cc_node::a_operation_stop_action_and_hoverResponse
  (:init
   (&key
    ((:a_operation_status __a_operation_status) 0)
    )
   (send-super :init)
   (setq _a_operation_status (round __a_operation_status))
   self)
  (:a_operation_status
   (&optional __a_operation_status)
   (if __a_operation_status (setq _a_operation_status __a_operation_status)) _a_operation_status)
  (:serialization-length
   ()
   (+
    ;; int64 _a_operation_status
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _a_operation_status
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _a_operation_status (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _a_operation_status) (= (length (_a_operation_status . bv)) 2)) ;; bignum
              (write-long (ash (elt (_a_operation_status . bv) 0) 0) s)
              (write-long (ash (elt (_a_operation_status . bv) 1) -1) s))
             ((and (class _a_operation_status) (= (length (_a_operation_status . bv)) 1)) ;; big1
              (write-long (elt (_a_operation_status . bv) 0) s)
              (write-long (if (>= _a_operation_status 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _a_operation_status s)(write-long (if (>= _a_operation_status 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _a_operation_status
#+(or :alpha :irix6 :x86_64)
      (setf _a_operation_status (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _a_operation_status (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(defclass cc_node::a_operation_stop_action_and_hover
  :super ros::object
  :slots ())

(setf (get cc_node::a_operation_stop_action_and_hover :md5sum-) "9f7e3069e3c41eb7fbdf0bd3a0382e98")
(setf (get cc_node::a_operation_stop_action_and_hover :datatype-) "cc_node/a_operation_stop_action_and_hover")
(setf (get cc_node::a_operation_stop_action_and_hover :request) cc_node::a_operation_stop_action_and_hoverRequest)
(setf (get cc_node::a_operation_stop_action_and_hover :response) cc_node::a_operation_stop_action_and_hoverResponse)

(defmethod cc_node::a_operation_stop_action_and_hoverRequest
  (:response () (instance cc_node::a_operation_stop_action_and_hoverResponse :init)))

(setf (get cc_node::a_operation_stop_action_and_hoverRequest :md5sum-) "9f7e3069e3c41eb7fbdf0bd3a0382e98")
(setf (get cc_node::a_operation_stop_action_and_hoverRequest :datatype-) "cc_node/a_operation_stop_action_and_hoverRequest")
(setf (get cc_node::a_operation_stop_action_and_hoverRequest :definition-)
      "string a_operation_pausing_reason
---
int64 a_operation_status

")

(setf (get cc_node::a_operation_stop_action_and_hoverResponse :md5sum-) "9f7e3069e3c41eb7fbdf0bd3a0382e98")
(setf (get cc_node::a_operation_stop_action_and_hoverResponse :datatype-) "cc_node/a_operation_stop_action_and_hoverResponse")
(setf (get cc_node::a_operation_stop_action_and_hoverResponse :definition-)
      "string a_operation_pausing_reason
---
int64 a_operation_status

")



(provide :cc_node/a_operation_stop_action_and_hover "9f7e3069e3c41eb7fbdf0bd3a0382e98")


