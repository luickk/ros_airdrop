;; Auto-generated. Do not edit!


(when (boundp 'cc_node::get_set_take_off_pos)
  (if (not (find-package "CC_NODE"))
    (make-package "CC_NODE"))
  (shadow 'get_set_take_off_pos (find-package "CC_NODE")))
(unless (find-package "CC_NODE::GET_SET_TAKE_OFF_POS")
  (make-package "CC_NODE::GET_SET_TAKE_OFF_POS"))
(unless (find-package "CC_NODE::GET_SET_TAKE_OFF_POSREQUEST")
  (make-package "CC_NODE::GET_SET_TAKE_OFF_POSREQUEST"))
(unless (find-package "CC_NODE::GET_SET_TAKE_OFF_POSRESPONSE")
  (make-package "CC_NODE::GET_SET_TAKE_OFF_POSRESPONSE"))

(in-package "ROS")





(defclass cc_node::get_set_take_off_posRequest
  :super ros::object
  :slots (_get_set ))

(defmethod cc_node::get_set_take_off_posRequest
  (:init
   (&key
    ((:get_set __get_set) "")
    )
   (send-super :init)
   (setq _get_set (string __get_set))
   self)
  (:get_set
   (&optional __get_set)
   (if __get_set (setq _get_set __get_set)) _get_set)
  (:serialization-length
   ()
   (+
    ;; string _get_set
    4 (length _get_set)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _get_set
       (write-long (length _get_set) s) (princ _get_set s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _get_set
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _get_set (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass cc_node::get_set_take_off_posResponse
  :super ros::object
  :slots (_gps_sats _lat _lon _heading _alt _system_status ))

(defmethod cc_node::get_set_take_off_posResponse
  (:init
   (&key
    ((:gps_sats __gps_sats) 0)
    ((:lat __lat) 0.0)
    ((:lon __lon) 0.0)
    ((:heading __heading) 0)
    ((:alt __alt) 0)
    ((:system_status __system_status) 0)
    )
   (send-super :init)
   (setq _gps_sats (round __gps_sats))
   (setq _lat (float __lat))
   (setq _lon (float __lon))
   (setq _heading (round __heading))
   (setq _alt (round __alt))
   (setq _system_status (round __system_status))
   self)
  (:gps_sats
   (&optional __gps_sats)
   (if __gps_sats (setq _gps_sats __gps_sats)) _gps_sats)
  (:lat
   (&optional __lat)
   (if __lat (setq _lat __lat)) _lat)
  (:lon
   (&optional __lon)
   (if __lon (setq _lon __lon)) _lon)
  (:heading
   (&optional __heading)
   (if __heading (setq _heading __heading)) _heading)
  (:alt
   (&optional __alt)
   (if __alt (setq _alt __alt)) _alt)
  (:system_status
   (&optional __system_status)
   (if __system_status (setq _system_status __system_status)) _system_status)
  (:serialization-length
   ()
   (+
    ;; int32 _gps_sats
    4
    ;; float32 _lat
    4
    ;; float32 _lon
    4
    ;; int32 _heading
    4
    ;; int32 _alt
    4
    ;; int64 _system_status
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _gps_sats
       (write-long _gps_sats s)
     ;; float32 _lat
       (sys::poke _lat (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _lon
       (sys::poke _lon (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _heading
       (write-long _heading s)
     ;; int32 _alt
       (write-long _alt s)
     ;; int64 _system_status
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _system_status (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _system_status) (= (length (_system_status . bv)) 2)) ;; bignum
              (write-long (ash (elt (_system_status . bv) 0) 0) s)
              (write-long (ash (elt (_system_status . bv) 1) -1) s))
             ((and (class _system_status) (= (length (_system_status . bv)) 1)) ;; big1
              (write-long (elt (_system_status . bv) 0) s)
              (write-long (if (>= _system_status 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _system_status s)(write-long (if (>= _system_status 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _gps_sats
     (setq _gps_sats (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _lat
     (setq _lat (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _lon
     (setq _lon (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _heading
     (setq _heading (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _alt
     (setq _alt (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int64 _system_status
#+(or :alpha :irix6 :x86_64)
      (setf _system_status (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _system_status (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(defclass cc_node::get_set_take_off_pos
  :super ros::object
  :slots ())

(setf (get cc_node::get_set_take_off_pos :md5sum-) "cb8b16d8dc4146dca7889be0392bf192")
(setf (get cc_node::get_set_take_off_pos :datatype-) "cc_node/get_set_take_off_pos")
(setf (get cc_node::get_set_take_off_pos :request) cc_node::get_set_take_off_posRequest)
(setf (get cc_node::get_set_take_off_pos :response) cc_node::get_set_take_off_posResponse)

(defmethod cc_node::get_set_take_off_posRequest
  (:response () (instance cc_node::get_set_take_off_posResponse :init)))

(setf (get cc_node::get_set_take_off_posRequest :md5sum-) "cb8b16d8dc4146dca7889be0392bf192")
(setf (get cc_node::get_set_take_off_posRequest :datatype-) "cc_node/get_set_take_off_posRequest")
(setf (get cc_node::get_set_take_off_posRequest :definition-)
      "string get_set
---
int32 gps_sats
float32 lat
float32 lon
int32 heading
int32 alt
int64 system_status

")

(setf (get cc_node::get_set_take_off_posResponse :md5sum-) "cb8b16d8dc4146dca7889be0392bf192")
(setf (get cc_node::get_set_take_off_posResponse :datatype-) "cc_node/get_set_take_off_posResponse")
(setf (get cc_node::get_set_take_off_posResponse :definition-)
      "string get_set
---
int32 gps_sats
float32 lat
float32 lon
int32 heading
int32 alt
int64 system_status

")



(provide :cc_node/get_set_take_off_pos "cb8b16d8dc4146dca7889be0392bf192")


