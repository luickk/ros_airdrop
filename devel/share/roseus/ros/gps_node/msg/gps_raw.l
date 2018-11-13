;; Auto-generated. Do not edit!


(when (boundp 'gps_node::gps_raw)
  (if (not (find-package "GPS_NODE"))
    (make-package "GPS_NODE"))
  (shadow 'gps_raw (find-package "GPS_NODE")))
(unless (find-package "GPS_NODE::GPS_RAW")
  (make-package "GPS_NODE::GPS_RAW"))

(in-package "ROS")
;;//! \htmlinclude gps_raw.msg.html


(defclass gps_node::gps_raw
  :super ros::object
  :slots (_gps_sats _lat _lon _heading _alt ))

(defmethod gps_node::gps_raw
  (:init
   (&key
    ((:gps_sats __gps_sats) 0)
    ((:lat __lat) 0.0)
    ((:lon __lon) 0.0)
    ((:heading __heading) 0)
    ((:alt __alt) 0)
    )
   (send-super :init)
   (setq _gps_sats (round __gps_sats))
   (setq _lat (float __lat))
   (setq _lon (float __lon))
   (setq _heading (round __heading))
   (setq _alt (round __alt))
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
   ;;
   self)
  )

(setf (get gps_node::gps_raw :md5sum-) "b370abee1ae60162d73fe65bb7c660bd")
(setf (get gps_node::gps_raw :datatype-) "gps_node/gps_raw")
(setf (get gps_node::gps_raw :definition-)
      "int32 gps_sats
float32 lat
float32 lon
int32 heading
int32 alt

")



(provide :gps_node/gps_raw "b370abee1ae60162d73fe65bb7c660bd")


