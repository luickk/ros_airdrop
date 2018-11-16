; Auto-generated. Do not edit!


(cl:in-package mission_node-srv)


;//! \htmlinclude start_mission-request.msg.html

(cl:defclass <start_mission-request> (roslisp-msg-protocol:ros-message)
  ((mission_name
    :reader mission_name
    :initarg :mission_name
    :type cl:string
    :initform ""))
)

(cl:defclass start_mission-request (<start_mission-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <start_mission-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'start_mission-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mission_node-srv:<start_mission-request> is deprecated: use mission_node-srv:start_mission-request instead.")))

(cl:ensure-generic-function 'mission_name-val :lambda-list '(m))
(cl:defmethod mission_name-val ((m <start_mission-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mission_node-srv:mission_name-val is deprecated.  Use mission_node-srv:mission_name instead.")
  (mission_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <start_mission-request>) ostream)
  "Serializes a message object of type '<start_mission-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'mission_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'mission_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <start_mission-request>) istream)
  "Deserializes a message object of type '<start_mission-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mission_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'mission_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<start_mission-request>)))
  "Returns string type for a service object of type '<start_mission-request>"
  "mission_node/start_missionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'start_mission-request)))
  "Returns string type for a service object of type 'start_mission-request"
  "mission_node/start_missionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<start_mission-request>)))
  "Returns md5sum for a message object of type '<start_mission-request>"
  "c1bb7be27d31f8856aed46e2dd0be34b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'start_mission-request)))
  "Returns md5sum for a message object of type 'start_mission-request"
  "c1bb7be27d31f8856aed46e2dd0be34b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<start_mission-request>)))
  "Returns full string definition for message of type '<start_mission-request>"
  (cl:format cl:nil "string mission_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'start_mission-request)))
  "Returns full string definition for message of type 'start_mission-request"
  (cl:format cl:nil "string mission_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <start_mission-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'mission_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <start_mission-request>))
  "Converts a ROS message object to a list"
  (cl:list 'start_mission-request
    (cl:cons ':mission_name (mission_name msg))
))
;//! \htmlinclude start_mission-response.msg.html

(cl:defclass <start_mission-response> (roslisp-msg-protocol:ros-message)
  ((mission_status
    :reader mission_status
    :initarg :mission_status
    :type cl:integer
    :initform 0))
)

(cl:defclass start_mission-response (<start_mission-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <start_mission-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'start_mission-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mission_node-srv:<start_mission-response> is deprecated: use mission_node-srv:start_mission-response instead.")))

(cl:ensure-generic-function 'mission_status-val :lambda-list '(m))
(cl:defmethod mission_status-val ((m <start_mission-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mission_node-srv:mission_status-val is deprecated.  Use mission_node-srv:mission_status instead.")
  (mission_status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <start_mission-response>) ostream)
  "Serializes a message object of type '<start_mission-response>"
  (cl:let* ((signed (cl:slot-value msg 'mission_status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <start_mission-response>) istream)
  "Deserializes a message object of type '<start_mission-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mission_status) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<start_mission-response>)))
  "Returns string type for a service object of type '<start_mission-response>"
  "mission_node/start_missionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'start_mission-response)))
  "Returns string type for a service object of type 'start_mission-response"
  "mission_node/start_missionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<start_mission-response>)))
  "Returns md5sum for a message object of type '<start_mission-response>"
  "c1bb7be27d31f8856aed46e2dd0be34b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'start_mission-response)))
  "Returns md5sum for a message object of type 'start_mission-response"
  "c1bb7be27d31f8856aed46e2dd0be34b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<start_mission-response>)))
  "Returns full string definition for message of type '<start_mission-response>"
  (cl:format cl:nil "int64 mission_status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'start_mission-response)))
  "Returns full string definition for message of type 'start_mission-response"
  (cl:format cl:nil "int64 mission_status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <start_mission-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <start_mission-response>))
  "Converts a ROS message object to a list"
  (cl:list 'start_mission-response
    (cl:cons ':mission_status (mission_status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'start_mission)))
  'start_mission-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'start_mission)))
  'start_mission-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'start_mission)))
  "Returns string type for a service object of type '<start_mission>"
  "mission_node/start_mission")