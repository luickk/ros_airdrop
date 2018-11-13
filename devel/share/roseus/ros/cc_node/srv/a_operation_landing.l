;; Auto-generated. Do not edit!


(when (boundp 'cc_node::a_operation_landing)
  (if (not (find-package "CC_NODE"))
    (make-package "CC_NODE"))
  (shadow 'a_operation_landing (find-package "CC_NODE")))
(unless (find-package "CC_NODE::A_OPERATION_LANDING")
  (make-package "CC_NODE::A_OPERATION_LANDING"))
(unless (find-package "CC_NODE::A_OPERATION_LANDINGREQUEST")
  (make-package "CC_NODE::A_OPERATION_LANDINGREQUEST"))
(unless (find-package "CC_NODE::A_OPERATION_LANDINGRESPONSE")
  (make-package "CC_NODE::A_OPERATION_LANDINGRESPONSE"))

(in-package "ROS")





(defclass cc_node::a_operation_landingRequest
  :super ros::object
  :slots (_a_operation_landing_reason ))

(defmethod cc_node::a_operation_landingRequest
  (:init
   (&key
    ((:a_operation_landing_reason __a_operation_landing_reason) "")
    )
   (send-super :init)
   (setq _a_operation_landing_reason (string __a_operation_landing_reason))
   self)
  (:a_operation_landing_reason
   (&optional __a_operation_landing_reason)
   (if __a_operation_landing_reason (setq _a_operation_landing_reason __a_operation_landing_reason)) _a_operation_landing_reason)
  (:serialization-length
   ()
   (+
    ;; string _a_operation_landing_reason
    4 (length _a_operation_landing_reason)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _a_operation_landing_reason
       (write-long (length _a_operation_landing_reason) s) (princ _a_operation_landing_reason s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _a_operation_landing_reason
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _a_operation_landing_reason (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass cc_node::a_operation_landingResponse
  :super ros::object
  :slots (_a_operation_status ))

(defmethod cc_node::a_operation_landingResponse
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

(defclass cc_node::a_operation_landing
  :super ros::object
  :slots ())

(setf (get cc_node::a_operation_landing :md5sum-) "fd59bedfcc1f7eb050c1f843ac95cbaa")
(setf (get cc_node::a_operation_landing :datatype-) "cc_node/a_operation_landing")
(setf (get cc_node::a_operation_landing :request) cc_node::a_operation_landingRequest)
(setf (get cc_node::a_operation_landing :response) cc_node::a_operation_landingResponse)

(defmethod cc_node::a_operation_landingRequest
  (:response () (instance cc_node::a_operation_landingResponse :init)))

(setf (get cc_node::a_operation_landingRequest :md5sum-) "fd59bedfcc1f7eb050c1f843ac95cbaa")
(setf (get cc_node::a_operation_landingRequest :datatype-) "cc_node/a_operation_landingRequest")
(setf (get cc_node::a_operation_landingRequest :definition-)
      "string a_operation_landing_reason
---
int64 a_operation_status

")

(setf (get cc_node::a_operation_landingResponse :md5sum-) "fd59bedfcc1f7eb050c1f843ac95cbaa")
(setf (get cc_node::a_operation_landingResponse :datatype-) "cc_node/a_operation_landingResponse")
(setf (get cc_node::a_operation_landingResponse :definition-)
      "string a_operation_landing_reason
---
int64 a_operation_status

")



(provide :cc_node/a_operation_landing "fd59bedfcc1f7eb050c1f843ac95cbaa")


