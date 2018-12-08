; Auto-generated. Do not edit!


(cl:in-package cc_node-srv)


;//! \htmlinclude get_set_take_off_pos-request.msg.html

(cl:defclass <get_set_take_off_pos-request> (roslisp-msg-protocol:ros-message)
  ((get_set
    :reader get_set
    :initarg :get_set
    :type cl:string
    :initform ""))
)

(cl:defclass get_set_take_off_pos-request (<get_set_take_off_pos-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <get_set_take_off_pos-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'get_set_take_off_pos-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cc_node-srv:<get_set_take_off_pos-request> is deprecated: use cc_node-srv:get_set_take_off_pos-request instead.")))

(cl:ensure-generic-function 'get_set-val :lambda-list '(m))
(cl:defmethod get_set-val ((m <get_set_take_off_pos-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cc_node-srv:get_set-val is deprecated.  Use cc_node-srv:get_set instead.")
  (get_set m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <get_set_take_off_pos-request>) ostream)
  "Serializes a message object of type '<get_set_take_off_pos-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'get_set))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'get_set))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <get_set_take_off_pos-request>) istream)
  "Deserializes a message object of type '<get_set_take_off_pos-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'get_set) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'get_set) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<get_set_take_off_pos-request>)))
  "Returns string type for a service object of type '<get_set_take_off_pos-request>"
  "cc_node/get_set_take_off_posRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'get_set_take_off_pos-request)))
  "Returns string type for a service object of type 'get_set_take_off_pos-request"
  "cc_node/get_set_take_off_posRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<get_set_take_off_pos-request>)))
  "Returns md5sum for a message object of type '<get_set_take_off_pos-request>"
  "cb8b16d8dc4146dca7889be0392bf192")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'get_set_take_off_pos-request)))
  "Returns md5sum for a message object of type 'get_set_take_off_pos-request"
  "cb8b16d8dc4146dca7889be0392bf192")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<get_set_take_off_pos-request>)))
  "Returns full string definition for message of type '<get_set_take_off_pos-request>"
  (cl:format cl:nil "string get_set~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'get_set_take_off_pos-request)))
  "Returns full string definition for message of type 'get_set_take_off_pos-request"
  (cl:format cl:nil "string get_set~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <get_set_take_off_pos-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'get_set))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <get_set_take_off_pos-request>))
  "Converts a ROS message object to a list"
  (cl:list 'get_set_take_off_pos-request
    (cl:cons ':get_set (get_set msg))
))
;//! \htmlinclude get_set_take_off_pos-response.msg.html

(cl:defclass <get_set_take_off_pos-response> (roslisp-msg-protocol:ros-message)
  ((gps_sats
    :reader gps_sats
    :initarg :gps_sats
    :type cl:integer
    :initform 0)
   (lat
    :reader lat
    :initarg :lat
    :type cl:float
    :initform 0.0)
   (lon
    :reader lon
    :initarg :lon
    :type cl:float
    :initform 0.0)
   (heading
    :reader heading
    :initarg :heading
    :type cl:integer
    :initform 0)
   (alt
    :reader alt
    :initarg :alt
    :type cl:integer
    :initform 0)
   (system_status
    :reader system_status
    :initarg :system_status
    :type cl:integer
    :initform 0))
)

(cl:defclass get_set_take_off_pos-response (<get_set_take_off_pos-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <get_set_take_off_pos-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'get_set_take_off_pos-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cc_node-srv:<get_set_take_off_pos-response> is deprecated: use cc_node-srv:get_set_take_off_pos-response instead.")))

(cl:ensure-generic-function 'gps_sats-val :lambda-list '(m))
(cl:defmethod gps_sats-val ((m <get_set_take_off_pos-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cc_node-srv:gps_sats-val is deprecated.  Use cc_node-srv:gps_sats instead.")
  (gps_sats m))

(cl:ensure-generic-function 'lat-val :lambda-list '(m))
(cl:defmethod lat-val ((m <get_set_take_off_pos-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cc_node-srv:lat-val is deprecated.  Use cc_node-srv:lat instead.")
  (lat m))

(cl:ensure-generic-function 'lon-val :lambda-list '(m))
(cl:defmethod lon-val ((m <get_set_take_off_pos-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cc_node-srv:lon-val is deprecated.  Use cc_node-srv:lon instead.")
  (lon m))

(cl:ensure-generic-function 'heading-val :lambda-list '(m))
(cl:defmethod heading-val ((m <get_set_take_off_pos-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cc_node-srv:heading-val is deprecated.  Use cc_node-srv:heading instead.")
  (heading m))

(cl:ensure-generic-function 'alt-val :lambda-list '(m))
(cl:defmethod alt-val ((m <get_set_take_off_pos-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cc_node-srv:alt-val is deprecated.  Use cc_node-srv:alt instead.")
  (alt m))

(cl:ensure-generic-function 'system_status-val :lambda-list '(m))
(cl:defmethod system_status-val ((m <get_set_take_off_pos-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cc_node-srv:system_status-val is deprecated.  Use cc_node-srv:system_status instead.")
  (system_status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <get_set_take_off_pos-response>) ostream)
  "Serializes a message object of type '<get_set_take_off_pos-response>"
  (cl:let* ((signed (cl:slot-value msg 'gps_sats)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'lat))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'lon))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'heading)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'alt)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'system_status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <get_set_take_off_pos-response>) istream)
  "Deserializes a message object of type '<get_set_take_off_pos-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gps_sats) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lat) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lon) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'heading) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'alt) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'system_status) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<get_set_take_off_pos-response>)))
  "Returns string type for a service object of type '<get_set_take_off_pos-response>"
  "cc_node/get_set_take_off_posResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'get_set_take_off_pos-response)))
  "Returns string type for a service object of type 'get_set_take_off_pos-response"
  "cc_node/get_set_take_off_posResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<get_set_take_off_pos-response>)))
  "Returns md5sum for a message object of type '<get_set_take_off_pos-response>"
  "cb8b16d8dc4146dca7889be0392bf192")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'get_set_take_off_pos-response)))
  "Returns md5sum for a message object of type 'get_set_take_off_pos-response"
  "cb8b16d8dc4146dca7889be0392bf192")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<get_set_take_off_pos-response>)))
  "Returns full string definition for message of type '<get_set_take_off_pos-response>"
  (cl:format cl:nil "int32 gps_sats~%float32 lat~%float32 lon~%int32 heading~%int32 alt~%int64 system_status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'get_set_take_off_pos-response)))
  "Returns full string definition for message of type 'get_set_take_off_pos-response"
  (cl:format cl:nil "int32 gps_sats~%float32 lat~%float32 lon~%int32 heading~%int32 alt~%int64 system_status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <get_set_take_off_pos-response>))
  (cl:+ 0
     4
     4
     4
     4
     4
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <get_set_take_off_pos-response>))
  "Converts a ROS message object to a list"
  (cl:list 'get_set_take_off_pos-response
    (cl:cons ':gps_sats (gps_sats msg))
    (cl:cons ':lat (lat msg))
    (cl:cons ':lon (lon msg))
    (cl:cons ':heading (heading msg))
    (cl:cons ':alt (alt msg))
    (cl:cons ':system_status (system_status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'get_set_take_off_pos)))
  'get_set_take_off_pos-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'get_set_take_off_pos)))
  'get_set_take_off_pos-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'get_set_take_off_pos)))
  "Returns string type for a service object of type '<get_set_take_off_pos>"
  "cc_node/get_set_take_off_pos")