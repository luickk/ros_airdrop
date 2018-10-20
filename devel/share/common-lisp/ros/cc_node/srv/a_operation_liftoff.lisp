; Auto-generated. Do not edit!


(cl:in-package cc_node-srv)


;//! \htmlinclude a_operation_liftoff-request.msg.html

(cl:defclass <a_operation_liftoff-request> (roslisp-msg-protocol:ros-message)
  ((a_operation_takeoff_height
    :reader a_operation_takeoff_height
    :initarg :a_operation_takeoff_height
    :type cl:integer
    :initform 0))
)

(cl:defclass a_operation_liftoff-request (<a_operation_liftoff-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <a_operation_liftoff-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'a_operation_liftoff-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cc_node-srv:<a_operation_liftoff-request> is deprecated: use cc_node-srv:a_operation_liftoff-request instead.")))

(cl:ensure-generic-function 'a_operation_takeoff_height-val :lambda-list '(m))
(cl:defmethod a_operation_takeoff_height-val ((m <a_operation_liftoff-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cc_node-srv:a_operation_takeoff_height-val is deprecated.  Use cc_node-srv:a_operation_takeoff_height instead.")
  (a_operation_takeoff_height m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <a_operation_liftoff-request>) ostream)
  "Serializes a message object of type '<a_operation_liftoff-request>"
  (cl:let* ((signed (cl:slot-value msg 'a_operation_takeoff_height)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <a_operation_liftoff-request>) istream)
  "Deserializes a message object of type '<a_operation_liftoff-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'a_operation_takeoff_height) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<a_operation_liftoff-request>)))
  "Returns string type for a service object of type '<a_operation_liftoff-request>"
  "cc_node/a_operation_liftoffRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'a_operation_liftoff-request)))
  "Returns string type for a service object of type 'a_operation_liftoff-request"
  "cc_node/a_operation_liftoffRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<a_operation_liftoff-request>)))
  "Returns md5sum for a message object of type '<a_operation_liftoff-request>"
  "343f536d7b1f038b89dbbbafadb1a351")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'a_operation_liftoff-request)))
  "Returns md5sum for a message object of type 'a_operation_liftoff-request"
  "343f536d7b1f038b89dbbbafadb1a351")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<a_operation_liftoff-request>)))
  "Returns full string definition for message of type '<a_operation_liftoff-request>"
  (cl:format cl:nil "int64 a_operation_takeoff_height~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'a_operation_liftoff-request)))
  "Returns full string definition for message of type 'a_operation_liftoff-request"
  (cl:format cl:nil "int64 a_operation_takeoff_height~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <a_operation_liftoff-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <a_operation_liftoff-request>))
  "Converts a ROS message object to a list"
  (cl:list 'a_operation_liftoff-request
    (cl:cons ':a_operation_takeoff_height (a_operation_takeoff_height msg))
))
;//! \htmlinclude a_operation_liftoff-response.msg.html

(cl:defclass <a_operation_liftoff-response> (roslisp-msg-protocol:ros-message)
  ((a_operation_status
    :reader a_operation_status
    :initarg :a_operation_status
    :type cl:integer
    :initform 0))
)

(cl:defclass a_operation_liftoff-response (<a_operation_liftoff-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <a_operation_liftoff-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'a_operation_liftoff-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cc_node-srv:<a_operation_liftoff-response> is deprecated: use cc_node-srv:a_operation_liftoff-response instead.")))

(cl:ensure-generic-function 'a_operation_status-val :lambda-list '(m))
(cl:defmethod a_operation_status-val ((m <a_operation_liftoff-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cc_node-srv:a_operation_status-val is deprecated.  Use cc_node-srv:a_operation_status instead.")
  (a_operation_status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <a_operation_liftoff-response>) ostream)
  "Serializes a message object of type '<a_operation_liftoff-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <a_operation_liftoff-response>) istream)
  "Deserializes a message object of type '<a_operation_liftoff-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<a_operation_liftoff-response>)))
  "Returns string type for a service object of type '<a_operation_liftoff-response>"
  "cc_node/a_operation_liftoffResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'a_operation_liftoff-response)))
  "Returns string type for a service object of type 'a_operation_liftoff-response"
  "cc_node/a_operation_liftoffResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<a_operation_liftoff-response>)))
  "Returns md5sum for a message object of type '<a_operation_liftoff-response>"
  "343f536d7b1f038b89dbbbafadb1a351")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'a_operation_liftoff-response)))
  "Returns md5sum for a message object of type 'a_operation_liftoff-response"
  "343f536d7b1f038b89dbbbafadb1a351")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<a_operation_liftoff-response>)))
  "Returns full string definition for message of type '<a_operation_liftoff-response>"
  (cl:format cl:nil "int64 a_operation_status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'a_operation_liftoff-response)))
  "Returns full string definition for message of type 'a_operation_liftoff-response"
  (cl:format cl:nil "int64 a_operation_status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <a_operation_liftoff-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <a_operation_liftoff-response>))
  "Converts a ROS message object to a list"
  (cl:list 'a_operation_liftoff-response
    (cl:cons ':a_operation_status (a_operation_status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'a_operation_liftoff)))
  'a_operation_liftoff-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'a_operation_liftoff)))
  'a_operation_liftoff-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'a_operation_liftoff)))
  "Returns string type for a service object of type '<a_operation_liftoff>"
  "cc_node/a_operation_liftoff")