;; Auto-generated. Do not edit!


(when (boundp 'cc_node::a_operation_liftoff)
  (if (not (find-package "CC_NODE"))
    (make-package "CC_NODE"))
  (shadow 'a_operation_liftoff (find-package "CC_NODE")))
(unless (find-package "CC_NODE::A_OPERATION_LIFTOFF")
  (make-package "CC_NODE::A_OPERATION_LIFTOFF"))
(unless (find-package "CC_NODE::A_OPERATION_LIFTOFFREQUEST")
  (make-package "CC_NODE::A_OPERATION_LIFTOFFREQUEST"))
(unless (find-package "CC_NODE::A_OPERATION_LIFTOFFRESPONSE")
  (make-package "CC_NODE::A_OPERATION_LIFTOFFRESPONSE"))

(in-package "ROS")





(defclass cc_node::a_operation_liftoffRequest
  :super ros::object
  :slots (_a_operation_takeoff_height ))

(defmethod cc_node::a_operation_liftoffRequest
  (:init
   (&key
    ((:a_operation_takeoff_height __a_operation_takeoff_height) 0)
    )
   (send-super :init)
   (setq _a_operation_takeoff_height (round __a_operation_takeoff_height))
   self)
  (:a_operation_takeoff_height
   (&optional __a_operation_takeoff_height)
   (if __a_operation_takeoff_height (setq _a_operation_takeoff_height __a_operation_takeoff_height)) _a_operation_takeoff_height)
  (:serialization-length
   ()
   (+
    ;; int64 _a_operation_takeoff_height
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _a_operation_takeoff_height
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _a_operation_takeoff_height (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _a_operation_takeoff_height) (= (length (_a_operation_takeoff_height . bv)) 2)) ;; bignum
              (write-long (ash (elt (_a_operation_takeoff_height . bv) 0) 0) s)
              (write-long (ash (elt (_a_operation_takeoff_height . bv) 1) -1) s))
             ((and (class _a_operation_takeoff_height) (= (length (_a_operation_takeoff_height . bv)) 1)) ;; big1
              (write-long (elt (_a_operation_takeoff_height . bv) 0) s)
              (write-long (if (>= _a_operation_takeoff_height 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _a_operation_takeoff_height s)(write-long (if (>= _a_operation_takeoff_height 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _a_operation_takeoff_height
#+(or :alpha :irix6 :x86_64)
      (setf _a_operation_takeoff_height (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _a_operation_takeoff_height (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(defclass cc_node::a_operation_liftoffResponse
  :super ros::object
  :slots (_a_operation_status ))

(defmethod cc_node::a_operation_liftoffResponse
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

(defclass cc_node::a_operation_liftoff
  :super ros::object
  :slots ())

(setf (get cc_node::a_operation_liftoff :md5sum-) "343f536d7b1f038b89dbbbafadb1a351")
(setf (get cc_node::a_operation_liftoff :datatype-) "cc_node/a_operation_liftoff")
(setf (get cc_node::a_operation_liftoff :request) cc_node::a_operation_liftoffRequest)
(setf (get cc_node::a_operation_liftoff :response) cc_node::a_operation_liftoffResponse)

(defmethod cc_node::a_operation_liftoffRequest
  (:response () (instance cc_node::a_operation_liftoffResponse :init)))

(setf (get cc_node::a_operation_liftoffRequest :md5sum-) "343f536d7b1f038b89dbbbafadb1a351")
(setf (get cc_node::a_operation_liftoffRequest :datatype-) "cc_node/a_operation_liftoffRequest")
(setf (get cc_node::a_operation_liftoffRequest :definition-)
      "int64 a_operation_takeoff_height
---
int64 a_operation_status

")

(setf (get cc_node::a_operation_liftoffResponse :md5sum-) "343f536d7b1f038b89dbbbafadb1a351")
(setf (get cc_node::a_operation_liftoffResponse :datatype-) "cc_node/a_operation_liftoffResponse")
(setf (get cc_node::a_operation_liftoffResponse :definition-)
      "int64 a_operation_takeoff_height
---
int64 a_operation_status

")



(provide :cc_node/a_operation_liftoff "343f536d7b1f038b89dbbbafadb1a351")


