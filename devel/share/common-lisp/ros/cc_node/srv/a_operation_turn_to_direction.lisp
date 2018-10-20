; Auto-generated. Do not edit!


(cl:in-package cc_node-srv)


;//! \htmlinclude a_operation_turn_to_direction-request.msg.html

(cl:defclass <a_operation_turn_to_direction-request> (roslisp-msg-protocol:ros-message)
  ((a_operation_dir_in_deg
    :reader a_operation_dir_in_deg
    :initarg :a_operation_dir_in_deg
    :type cl:integer
    :initform 0))
)

(cl:defclass a_operation_turn_to_direction-request (<a_operation_turn_to_direction-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <a_operation_turn_to_direction-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'a_operation_turn_to_direction-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cc_node-srv:<a_operation_turn_to_direction-request> is deprecated: use cc_node-srv:a_operation_turn_to_direction-request instead.")))

(cl:ensure-generic-function 'a_operation_dir_in_deg-val :lambda-list '(m))
(cl:defmethod a_operation_dir_in_deg-val ((m <a_operation_turn_to_direction-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cc_node-srv:a_operation_dir_in_deg-val is deprecated.  Use cc_node-srv:a_operation_dir_in_deg instead.")
  (a_operation_dir_in_deg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <a_operation_turn_to_direction-request>) ostream)
  "Serializes a message object of type '<a_operation_turn_to_direction-request>"
  (cl:let* ((signed (cl:slot-value msg 'a_operation_dir_in_deg)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <a_operation_turn_to_direction-request>) istream)
  "Deserializes a message object of type '<a_operation_turn_to_direction-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'a_operation_dir_in_deg) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<a_operation_turn_to_direction-request>)))
  "Returns string type for a service object of type '<a_operation_turn_to_direction-request>"
  "cc_node/a_operation_turn_to_directionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'a_operation_turn_to_direction-request)))
  "Returns string type for a service object of type 'a_operation_turn_to_direction-request"
  "cc_node/a_operation_turn_to_directionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<a_operation_turn_to_direction-request>)))
  "Returns md5sum for a message object of type '<a_operation_turn_to_direction-request>"
  "04bfe09b9b370af085e1e4ee62512b6d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'a_operation_turn_to_direction-request)))
  "Returns md5sum for a message object of type 'a_operation_turn_to_direction-request"
  "04bfe09b9b370af085e1e4ee62512b6d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<a_operation_turn_to_direction-request>)))
  "Returns full string definition for message of type '<a_operation_turn_to_direction-request>"
  (cl:format cl:nil "int64 a_operation_dir_in_deg~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'a_operation_turn_to_direction-request)))
  "Returns full string definition for message of type 'a_operation_turn_to_direction-request"
  (cl:format cl:nil "int64 a_operation_dir_in_deg~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <a_operation_turn_to_direction-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <a_operation_turn_to_direction-request>))
  "Converts a ROS message object to a list"
  (cl:list 'a_operation_turn_to_direction-request
    (cl:cons ':a_operation_dir_in_deg (a_operation_dir_in_deg msg))
))
;//! \htmlinclude a_operation_turn_to_direction-response.msg.html

(cl:defclass <a_operation_turn_to_direction-response> (roslisp-msg-protocol:ros-message)
  ((a_operation_status
    :reader a_operation_status
    :initarg :a_operation_status
    :type cl:integer
    :initform 0))
)

(cl:defclass a_operation_turn_to_direction-response (<a_operation_turn_to_direction-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <a_operation_turn_to_direction-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'a_operation_turn_to_direction-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cc_node-srv:<a_operation_turn_to_direction-response> is deprecated: use cc_node-srv:a_operation_turn_to_direction-response instead.")))

(cl:ensure-generic-function 'a_operation_status-val :lambda-list '(m))
(cl:defmethod a_operation_status-val ((m <a_operation_turn_to_direction-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cc_node-srv:a_operation_status-val is deprecated.  Use cc_node-srv:a_operation_status instead.")
  (a_operation_status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <a_operation_turn_to_direction-response>) ostream)
  "Serializes a message object of type '<a_operation_turn_to_direction-response>"
  (cl:let* ((signed (cl:slot-value msg 'a_operation_status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <a_operation_turn_to_direction-response>) istream)
  "Deserializes a message object of type '<a_operation_turn_to_direction-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'a_operation_status) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<a_operation_turn_to_direction-response>)))
  "Returns string type for a service object of type '<a_operation_turn_to_direction-response>"
  "cc_node/a_operation_turn_to_directionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'a_operation_turn_to_direction-response)))
  "Returns string type for a service object of type 'a_operation_turn_to_direction-response"
  "cc_node/a_operation_turn_to_directionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<a_operation_turn_to_direction-response>)))
  "Returns md5sum for a message object of type '<a_operation_turn_to_direction-response>"
  "04bfe09b9b370af085e1e4ee62512b6d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'a_operation_turn_to_direction-response)))
  "Returns md5sum for a message object of type 'a_operation_turn_to_direction-response"
  "04bfe09b9b370af085e1e4ee62512b6d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<a_operation_turn_to_direction-response>)))
  "Returns full string definition for message of type '<a_operation_turn_to_direction-response>"
  (cl:format cl:nil "int64 a_operation_status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'a_operation_turn_to_direction-response)))
  "Returns full string definition for message of type 'a_operation_turn_to_direction-response"
  (cl:format cl:nil "int64 a_operation_status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <a_operation_turn_to_direction-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <a_operation_turn_to_direction-response>))
  "Converts a ROS message object to a list"
  (cl:list 'a_operation_turn_to_direction-response
    (cl:cons ':a_operation_status (a_operation_status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'a_operation_turn_to_direction)))
  'a_operation_turn_to_direction-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'a_operation_turn_to_direction)))
  'a_operation_turn_to_direction-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'a_operation_turn_to_direction)))
  "Returns string type for a service object of type '<a_operation_turn_to_direction>"
  "cc_node/a_operation_turn_to_direction")