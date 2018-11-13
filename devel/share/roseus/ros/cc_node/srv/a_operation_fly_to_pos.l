;; Auto-generated. Do not edit!


(when (boundp 'cc_node::a_operation_fly_to_pos)
  (if (not (find-package "CC_NODE"))
    (make-package "CC_NODE"))
  (shadow 'a_operation_fly_to_pos (find-package "CC_NODE")))
(unless (find-package "CC_NODE::A_OPERATION_FLY_TO_POS")
  (make-package "CC_NODE::A_OPERATION_FLY_TO_POS"))
(unless (find-package "CC_NODE::A_OPERATION_FLY_TO_POSREQUEST")
  (make-package "CC_NODE::A_OPERATION_FLY_TO_POSREQUEST"))
(unless (find-package "CC_NODE::A_OPERATION_FLY_TO_POSRESPONSE")
  (make-package "CC_NODE::A_OPERATION_FLY_TO_POSRESPONSE"))

(in-package "ROS")





(defclass cc_node::a_operation_fly_to_posRequest
  :super ros::object
  :slots (_pos_lat _pos_lon _pos_alt ))

(defmethod cc_node::a_operation_fly_to_posRequest
  (:init
   (&key
    ((:pos_lat __pos_lat) 0.0)
    ((:pos_lon __pos_lon) 0.0)
    ((:pos_alt __pos_alt) 0)
    )
   (send-super :init)
   (setq _pos_lat (float __pos_lat))
   (setq _pos_lon (float __pos_lon))
   (setq _pos_alt (round __pos_alt))
   self)
  (:pos_lat
   (&optional __pos_lat)
   (if __pos_lat (setq _pos_lat __pos_lat)) _pos_lat)
  (:pos_lon
   (&optional __pos_lon)
   (if __pos_lon (setq _pos_lon __pos_lon)) _pos_lon)
  (:pos_alt
   (&optional __pos_alt)
   (if __pos_alt (setq _pos_alt __pos_alt)) _pos_alt)
  (:serialization-length
   ()
   (+
    ;; float32 _pos_lat
    4
    ;; float32 _pos_lon
    4
    ;; int32 _pos_alt
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _pos_lat
       (sys::poke _pos_lat (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _pos_lon
       (sys::poke _pos_lon (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _pos_alt
       (write-long _pos_alt s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _pos_lat
     (setq _pos_lat (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _pos_lon
     (setq _pos_lon (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _pos_alt
     (setq _pos_alt (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass cc_node::a_operation_fly_to_posResponse
  :super ros::object
  :slots (_a_operation_status ))

(defmethod cc_node::a_operation_fly_to_posResponse
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

(defclass cc_node::a_operation_fly_to_pos
  :super ros::object
  :slots ())

(setf (get cc_node::a_operation_fly_to_pos :md5sum-) "f535eee77eb701869745e49cc8201a71")
(setf (get cc_node::a_operation_fly_to_pos :datatype-) "cc_node/a_operation_fly_to_pos")
(setf (get cc_node::a_operation_fly_to_pos :request) cc_node::a_operation_fly_to_posRequest)
(setf (get cc_node::a_operation_fly_to_pos :response) cc_node::a_operation_fly_to_posResponse)

(defmethod cc_node::a_operation_fly_to_posRequest
  (:response () (instance cc_node::a_operation_fly_to_posResponse :init)))

(setf (get cc_node::a_operation_fly_to_posRequest :md5sum-) "f535eee77eb701869745e49cc8201a71")
(setf (get cc_node::a_operation_fly_to_posRequest :datatype-) "cc_node/a_operation_fly_to_posRequest")
(setf (get cc_node::a_operation_fly_to_posRequest :definition-)
      "float32 pos_lat
float32 pos_lon
int32 pos_alt

---
int64 a_operation_status

")

(setf (get cc_node::a_operation_fly_to_posResponse :md5sum-) "f535eee77eb701869745e49cc8201a71")
(setf (get cc_node::a_operation_fly_to_posResponse :datatype-) "cc_node/a_operation_fly_to_posResponse")
(setf (get cc_node::a_operation_fly_to_posResponse :definition-)
      "float32 pos_lat
float32 pos_lon
int32 pos_alt

---
int64 a_operation_status

")



(provide :cc_node/a_operation_fly_to_pos "f535eee77eb701869745e49cc8201a71")


