;; Auto-generated. Do not edit!


(when (boundp 'battery_node::bat_stat)
  (if (not (find-package "BATTERY_NODE"))
    (make-package "BATTERY_NODE"))
  (shadow 'bat_stat (find-package "BATTERY_NODE")))
(unless (find-package "BATTERY_NODE::BAT_STAT")
  (make-package "BATTERY_NODE::BAT_STAT"))

(in-package "ROS")
;;//! \htmlinclude bat_stat.msg.html


(defclass battery_node::bat_stat
  :super ros::object
  :slots (_bat_val ))

(defmethod battery_node::bat_stat
  (:init
   (&key
    ((:bat_val __bat_val) 0)
    )
   (send-super :init)
   (setq _bat_val (round __bat_val))
   self)
  (:bat_val
   (&optional __bat_val)
   (if __bat_val (setq _bat_val __bat_val)) _bat_val)
  (:serialization-length
   ()
   (+
    ;; int32 _bat_val
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _bat_val
       (write-long _bat_val s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _bat_val
     (setq _bat_val (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get battery_node::bat_stat :md5sum-) "6362255f22432ff23dbe6f399bfa3970")
(setf (get battery_node::bat_stat :datatype-) "battery_node/bat_stat")
(setf (get battery_node::bat_stat :definition-)
      "int32 bat_val

")



(provide :battery_node/bat_stat "6362255f22432ff23dbe6f399bfa3970")


