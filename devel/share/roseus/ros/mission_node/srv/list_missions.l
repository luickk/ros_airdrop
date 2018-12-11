;; Auto-generated. Do not edit!


(when (boundp 'mission_node::list_missions)
  (if (not (find-package "MISSION_NODE"))
    (make-package "MISSION_NODE"))
  (shadow 'list_missions (find-package "MISSION_NODE")))
(unless (find-package "MISSION_NODE::LIST_MISSIONS")
  (make-package "MISSION_NODE::LIST_MISSIONS"))
(unless (find-package "MISSION_NODE::LIST_MISSIONSREQUEST")
  (make-package "MISSION_NODE::LIST_MISSIONSREQUEST"))
(unless (find-package "MISSION_NODE::LIST_MISSIONSRESPONSE")
  (make-package "MISSION_NODE::LIST_MISSIONSRESPONSE"))

(in-package "ROS")





(defclass mission_node::list_missionsRequest
  :super ros::object
  :slots ())

(defmethod mission_node::list_missionsRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass mission_node::list_missionsResponse
  :super ros::object
  :slots (_mission_list ))

(defmethod mission_node::list_missionsResponse
  (:init
   (&key
    ((:mission_list __mission_list) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _mission_list __mission_list)
   self)
  (:mission_list
   (&optional __mission_list)
   (if __mission_list (setq _mission_list __mission_list)) _mission_list)
  (:serialization-length
   ()
   (+
    ;; string[] _mission_list
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _mission_list)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _mission_list
     (write-long (length _mission_list) s)
     (dolist (elem _mission_list)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _mission_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _mission_list (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _mission_list i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass mission_node::list_missions
  :super ros::object
  :slots ())

(setf (get mission_node::list_missions :md5sum-) "3d952d9b438834ab872583b9374911ec")
(setf (get mission_node::list_missions :datatype-) "mission_node/list_missions")
(setf (get mission_node::list_missions :request) mission_node::list_missionsRequest)
(setf (get mission_node::list_missions :response) mission_node::list_missionsResponse)

(defmethod mission_node::list_missionsRequest
  (:response () (instance mission_node::list_missionsResponse :init)))

(setf (get mission_node::list_missionsRequest :md5sum-) "3d952d9b438834ab872583b9374911ec")
(setf (get mission_node::list_missionsRequest :datatype-) "mission_node/list_missionsRequest")
(setf (get mission_node::list_missionsRequest :definition-)
      "
---
string[] mission_list

")

(setf (get mission_node::list_missionsResponse :md5sum-) "3d952d9b438834ab872583b9374911ec")
(setf (get mission_node::list_missionsResponse :datatype-) "mission_node/list_missionsResponse")
(setf (get mission_node::list_missionsResponse :definition-)
      "
---
string[] mission_list

")



(provide :mission_node/list_missions "3d952d9b438834ab872583b9374911ec")


