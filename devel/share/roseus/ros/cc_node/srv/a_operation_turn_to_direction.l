;; Auto-generated. Do not edit!


(when (boundp 'cc_node::a_operation_turn_to_direction)
  (if (not (find-package "CC_NODE"))
    (make-package "CC_NODE"))
  (shadow 'a_operation_turn_to_direction (find-package "CC_NODE")))
(unless (find-package "CC_NODE::A_OPERATION_TURN_TO_DIRECTION")
  (make-package "CC_NODE::A_OPERATION_TURN_TO_DIRECTION"))
(unless (find-package "CC_NODE::A_OPERATION_TURN_TO_DIRECTIONREQUEST")
  (make-package "CC_NODE::A_OPERATION_TURN_TO_DIRECTIONREQUEST"))
(unless (find-package "CC_NODE::A_OPERATION_TURN_TO_DIRECTIONRESPONSE")
  (make-package "CC_NODE::A_OPERATION_TURN_TO_DIRECTIONRESPONSE"))

(in-package "ROS")





(defclass cc_node::a_operation_turn_to_directionRequest
  :super ros::object
  :slots (_a_operation_dir_in_deg ))

(defmethod cc_node::a_operation_turn_to_directionRequest
  (:init
   (&key
    ((:a_operation_dir_in_deg __a_operation_dir_in_deg) 0)
    )
   (send-super :init)
   (setq _a_operation_dir_in_deg (round __a_operation_dir_in_deg))
   self)
  (:a_operation_dir_in_deg
   (&optional __a_operation_dir_in_deg)
   (if __a_operation_dir_in_deg (setq _a_operation_dir_in_deg __a_operation_dir_in_deg)) _a_operation_dir_in_deg)
  (:serialization-length
   ()
   (+
    ;; int64 _a_operation_dir_in_deg
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _a_operation_dir_in_deg
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _a_operation_dir_in_deg (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _a_operation_dir_in_deg) (= (length (_a_operation_dir_in_deg . bv)) 2)) ;; bignum
              (write-long (ash (elt (_a_operation_dir_in_deg . bv) 0) 0) s)
              (write-long (ash (elt (_a_operation_dir_in_deg . bv) 1) -1) s))
             ((and (class _a_operation_dir_in_deg) (= (length (_a_operation_dir_in_deg . bv)) 1)) ;; big1
              (write-long (elt (_a_operation_dir_in_deg . bv) 0) s)
              (write-long (if (>= _a_operation_dir_in_deg 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _a_operation_dir_in_deg s)(write-long (if (>= _a_operation_dir_in_deg 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _a_operation_dir_in_deg
#+(or :alpha :irix6 :x86_64)
      (setf _a_operation_dir_in_deg (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _a_operation_dir_in_deg (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(defclass cc_node::a_operation_turn_to_directionResponse
  :super ros::object
  :slots (_a_operation_status ))

(defmethod cc_node::a_operation_turn_to_directionResponse
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

(defclass cc_node::a_operation_turn_to_direction
  :super ros::object
  :slots ())

(setf (get cc_node::a_operation_turn_to_direction :md5sum-) "04bfe09b9b370af085e1e4ee62512b6d")
(setf (get cc_node::a_operation_turn_to_direction :datatype-) "cc_node/a_operation_turn_to_direction")
(setf (get cc_node::a_operation_turn_to_direction :request) cc_node::a_operation_turn_to_directionRequest)
(setf (get cc_node::a_operation_turn_to_direction :response) cc_node::a_operation_turn_to_directionResponse)

(defmethod cc_node::a_operation_turn_to_directionRequest
  (:response () (instance cc_node::a_operation_turn_to_directionResponse :init)))

(setf (get cc_node::a_operation_turn_to_directionRequest :md5sum-) "04bfe09b9b370af085e1e4ee62512b6d")
(setf (get cc_node::a_operation_turn_to_directionRequest :datatype-) "cc_node/a_operation_turn_to_directionRequest")
(setf (get cc_node::a_operation_turn_to_directionRequest :definition-)
      "int64 a_operation_dir_in_deg
---
int64 a_operation_status

")

(setf (get cc_node::a_operation_turn_to_directionResponse :md5sum-) "04bfe09b9b370af085e1e4ee62512b6d")
(setf (get cc_node::a_operation_turn_to_directionResponse :datatype-) "cc_node/a_operation_turn_to_directionResponse")
(setf (get cc_node::a_operation_turn_to_directionResponse :definition-)
      "int64 a_operation_dir_in_deg
---
int64 a_operation_status

")



(provide :cc_node/a_operation_turn_to_direction "04bfe09b9b370af085e1e4ee62512b6d")


