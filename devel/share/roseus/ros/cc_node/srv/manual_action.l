;; Auto-generated. Do not edit!


(when (boundp 'cc_node::manual_action)
  (if (not (find-package "CC_NODE"))
    (make-package "CC_NODE"))
  (shadow 'manual_action (find-package "CC_NODE")))
(unless (find-package "CC_NODE::MANUAL_ACTION")
  (make-package "CC_NODE::MANUAL_ACTION"))
(unless (find-package "CC_NODE::MANUAL_ACTIONREQUEST")
  (make-package "CC_NODE::MANUAL_ACTIONREQUEST"))
(unless (find-package "CC_NODE::MANUAL_ACTIONRESPONSE")
  (make-package "CC_NODE::MANUAL_ACTIONRESPONSE"))

(in-package "ROS")





(defclass cc_node::manual_actionRequest
  :super ros::object
  :slots (_m_action_type _m_action_val ))

(defmethod cc_node::manual_actionRequest
  (:init
   (&key
    ((:m_action_type __m_action_type) "")
    ((:m_action_val __m_action_val) 0)
    )
   (send-super :init)
   (setq _m_action_type (string __m_action_type))
   (setq _m_action_val (round __m_action_val))
   self)
  (:m_action_type
   (&optional __m_action_type)
   (if __m_action_type (setq _m_action_type __m_action_type)) _m_action_type)
  (:m_action_val
   (&optional __m_action_val)
   (if __m_action_val (setq _m_action_val __m_action_val)) _m_action_val)
  (:serialization-length
   ()
   (+
    ;; string _m_action_type
    4 (length _m_action_type)
    ;; int64 _m_action_val
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _m_action_type
       (write-long (length _m_action_type) s) (princ _m_action_type s)
     ;; int64 _m_action_val
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _m_action_val (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _m_action_val) (= (length (_m_action_val . bv)) 2)) ;; bignum
              (write-long (ash (elt (_m_action_val . bv) 0) 0) s)
              (write-long (ash (elt (_m_action_val . bv) 1) -1) s))
             ((and (class _m_action_val) (= (length (_m_action_val . bv)) 1)) ;; big1
              (write-long (elt (_m_action_val . bv) 0) s)
              (write-long (if (>= _m_action_val 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _m_action_val s)(write-long (if (>= _m_action_val 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _m_action_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _m_action_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int64 _m_action_val
#+(or :alpha :irix6 :x86_64)
      (setf _m_action_val (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _m_action_val (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(defclass cc_node::manual_actionResponse
  :super ros::object
  :slots (_m_action_status ))

(defmethod cc_node::manual_actionResponse
  (:init
   (&key
    ((:m_action_status __m_action_status) 0)
    )
   (send-super :init)
   (setq _m_action_status (round __m_action_status))
   self)
  (:m_action_status
   (&optional __m_action_status)
   (if __m_action_status (setq _m_action_status __m_action_status)) _m_action_status)
  (:serialization-length
   ()
   (+
    ;; int64 _m_action_status
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _m_action_status
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _m_action_status (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _m_action_status) (= (length (_m_action_status . bv)) 2)) ;; bignum
              (write-long (ash (elt (_m_action_status . bv) 0) 0) s)
              (write-long (ash (elt (_m_action_status . bv) 1) -1) s))
             ((and (class _m_action_status) (= (length (_m_action_status . bv)) 1)) ;; big1
              (write-long (elt (_m_action_status . bv) 0) s)
              (write-long (if (>= _m_action_status 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _m_action_status s)(write-long (if (>= _m_action_status 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _m_action_status
#+(or :alpha :irix6 :x86_64)
      (setf _m_action_status (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _m_action_status (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(defclass cc_node::manual_action
  :super ros::object
  :slots ())

(setf (get cc_node::manual_action :md5sum-) "96b258534bcb1e3eb6622e57cbccfdc8")
(setf (get cc_node::manual_action :datatype-) "cc_node/manual_action")
(setf (get cc_node::manual_action :request) cc_node::manual_actionRequest)
(setf (get cc_node::manual_action :response) cc_node::manual_actionResponse)

(defmethod cc_node::manual_actionRequest
  (:response () (instance cc_node::manual_actionResponse :init)))

(setf (get cc_node::manual_actionRequest :md5sum-) "96b258534bcb1e3eb6622e57cbccfdc8")
(setf (get cc_node::manual_actionRequest :datatype-) "cc_node/manual_actionRequest")
(setf (get cc_node::manual_actionRequest :definition-)
      "string m_action_type
int64 m_action_val
---
int64 m_action_status

")

(setf (get cc_node::manual_actionResponse :md5sum-) "96b258534bcb1e3eb6622e57cbccfdc8")
(setf (get cc_node::manual_actionResponse :datatype-) "cc_node/manual_actionResponse")
(setf (get cc_node::manual_actionResponse :definition-)
      "string m_action_type
int64 m_action_val
---
int64 m_action_status

")



(provide :cc_node/manual_action "96b258534bcb1e3eb6622e57cbccfdc8")


