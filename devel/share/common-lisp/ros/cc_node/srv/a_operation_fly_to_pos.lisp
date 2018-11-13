; Auto-generated. Do not edit!


(cl:in-package cc_node-srv)


;//! \htmlinclude a_operation_fly_to_pos-request.msg.html

(cl:defclass <a_operation_fly_to_pos-request> (roslisp-msg-protocol:ros-message)
  ((pos_lat
    :reader pos_lat
    :initarg :pos_lat
    :type cl:float
    :initform 0.0)
   (pos_lon
    :reader pos_lon
    :initarg :pos_lon
    :type cl:float
    :initform 0.0)
   (pos_alt
    :reader pos_alt
    :initarg :pos_alt
    :type cl:integer
    :initform 0))
)

(cl:defclass a_operation_fly_to_pos-request (<a_operation_fly_to_pos-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <a_operation_fly_to_pos-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'a_operation_fly_to_pos-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cc_node-srv:<a_operation_fly_to_pos-request> is deprecated: use cc_node-srv:a_operation_fly_to_pos-request instead.")))

(cl:ensure-generic-function 'pos_lat-val :lambda-list '(m))
(cl:defmethod pos_lat-val ((m <a_operation_fly_to_pos-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cc_node-srv:pos_lat-val is deprecated.  Use cc_node-srv:pos_lat instead.")
  (pos_lat m))

(cl:ensure-generic-function 'pos_lon-val :lambda-list '(m))
(cl:defmethod pos_lon-val ((m <a_operation_fly_to_pos-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cc_node-srv:pos_lon-val is deprecated.  Use cc_node-srv:pos_lon instead.")
  (pos_lon m))

(cl:ensure-generic-function 'pos_alt-val :lambda-list '(m))
(cl:defmethod pos_alt-val ((m <a_operation_fly_to_pos-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cc_node-srv:pos_alt-val is deprecated.  Use cc_node-srv:pos_alt instead.")
  (pos_alt m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <a_operation_fly_to_pos-request>) ostream)
  "Serializes a message object of type '<a_operation_fly_to_pos-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pos_lat))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pos_lon))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'pos_alt)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <a_operation_fly_to_pos-request>) istream)
  "Deserializes a message object of type '<a_operation_fly_to_pos-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pos_lat) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pos_lon) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pos_alt) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<a_operation_fly_to_pos-request>)))
  "Returns string type for a service object of type '<a_operation_fly_to_pos-request>"
  "cc_node/a_operation_fly_to_posRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'a_operation_fly_to_pos-request)))
  "Returns string type for a service object of type 'a_operation_fly_to_pos-request"
  "cc_node/a_operation_fly_to_posRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<a_operation_fly_to_pos-request>)))
  "Returns md5sum for a message object of type '<a_operation_fly_to_pos-request>"
  "f535eee77eb701869745e49cc8201a71")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'a_operation_fly_to_pos-request)))
  "Returns md5sum for a message object of type 'a_operation_fly_to_pos-request"
  "f535eee77eb701869745e49cc8201a71")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<a_operation_fly_to_pos-request>)))
  "Returns full string definition for message of type '<a_operation_fly_to_pos-request>"
  (cl:format cl:nil "float32 pos_lat~%float32 pos_lon~%int32 pos_alt~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'a_operation_fly_to_pos-request)))
  "Returns full string definition for message of type 'a_operation_fly_to_pos-request"
  (cl:format cl:nil "float32 pos_lat~%float32 pos_lon~%int32 pos_alt~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <a_operation_fly_to_pos-request>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <a_operation_fly_to_pos-request>))
  "Converts a ROS message object to a list"
  (cl:list 'a_operation_fly_to_pos-request
    (cl:cons ':pos_lat (pos_lat msg))
    (cl:cons ':pos_lon (pos_lon msg))
    (cl:cons ':pos_alt (pos_alt msg))
))
;//! \htmlinclude a_operation_fly_to_pos-response.msg.html

(cl:defclass <a_operation_fly_to_pos-response> (roslisp-msg-protocol:ros-message)
  ((a_operation_status
    :reader a_operation_status
    :initarg :a_operation_status
    :type cl:integer
    :initform 0))
)

(cl:defclass a_operation_fly_to_pos-response (<a_operation_fly_to_pos-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <a_operation_fly_to_pos-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'a_operation_fly_to_pos-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cc_node-srv:<a_operation_fly_to_pos-response> is deprecated: use cc_node-srv:a_operation_fly_to_pos-response instead.")))

(cl:ensure-generic-function 'a_operation_status-val :lambda-list '(m))
(cl:defmethod a_operation_status-val ((m <a_operation_fly_to_pos-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cc_node-srv:a_operation_status-val is deprecated.  Use cc_node-srv:a_operation_status instead.")
  (a_operation_status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <a_operation_fly_to_pos-response>) ostream)
  "Serializes a message object of type '<a_operation_fly_to_pos-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <a_operation_fly_to_pos-response>) istream)
  "Deserializes a message object of type '<a_operation_fly_to_pos-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<a_operation_fly_to_pos-response>)))
  "Returns string type for a service object of type '<a_operation_fly_to_pos-response>"
  "cc_node/a_operation_fly_to_posResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'a_operation_fly_to_pos-response)))
  "Returns string type for a service object of type 'a_operation_fly_to_pos-response"
  "cc_node/a_operation_fly_to_posResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<a_operation_fly_to_pos-response>)))
  "Returns md5sum for a message object of type '<a_operation_fly_to_pos-response>"
  "f535eee77eb701869745e49cc8201a71")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'a_operation_fly_to_pos-response)))
  "Returns md5sum for a message object of type 'a_operation_fly_to_pos-response"
  "f535eee77eb701869745e49cc8201a71")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<a_operation_fly_to_pos-response>)))
  "Returns full string definition for message of type '<a_operation_fly_to_pos-response>"
  (cl:format cl:nil "int64 a_operation_status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'a_operation_fly_to_pos-response)))
  "Returns full string definition for message of type 'a_operation_fly_to_pos-response"
  (cl:format cl:nil "int64 a_operation_status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <a_operation_fly_to_pos-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <a_operation_fly_to_pos-response>))
  "Converts a ROS message object to a list"
  (cl:list 'a_operation_fly_to_pos-response
    (cl:cons ':a_operation_status (a_operation_status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'a_operation_fly_to_pos)))
  'a_operation_fly_to_pos-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'a_operation_fly_to_pos)))
  'a_operation_fly_to_pos-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'a_operation_fly_to_pos)))
  "Returns string type for a service object of type '<a_operation_fly_to_pos>"
  "cc_node/a_operation_fly_to_pos")