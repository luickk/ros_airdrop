; Auto-generated. Do not edit!


(cl:in-package cc_node-srv)


;//! \htmlinclude manual_action-request.msg.html

(cl:defclass <manual_action-request> (roslisp-msg-protocol:ros-message)
  ((m_action_type
    :reader m_action_type
    :initarg :m_action_type
    :type cl:string
    :initform "")
   (m_action_val
    :reader m_action_val
    :initarg :m_action_val
    :type cl:integer
    :initform 0))
)

(cl:defclass manual_action-request (<manual_action-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <manual_action-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'manual_action-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cc_node-srv:<manual_action-request> is deprecated: use cc_node-srv:manual_action-request instead.")))

(cl:ensure-generic-function 'm_action_type-val :lambda-list '(m))
(cl:defmethod m_action_type-val ((m <manual_action-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cc_node-srv:m_action_type-val is deprecated.  Use cc_node-srv:m_action_type instead.")
  (m_action_type m))

(cl:ensure-generic-function 'm_action_val-val :lambda-list '(m))
(cl:defmethod m_action_val-val ((m <manual_action-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cc_node-srv:m_action_val-val is deprecated.  Use cc_node-srv:m_action_val instead.")
  (m_action_val m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <manual_action-request>) ostream)
  "Serializes a message object of type '<manual_action-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'm_action_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'm_action_type))
  (cl:let* ((signed (cl:slot-value msg 'm_action_val)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <manual_action-request>) istream)
  "Deserializes a message object of type '<manual_action-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'm_action_type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'm_action_type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'm_action_val) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<manual_action-request>)))
  "Returns string type for a service object of type '<manual_action-request>"
  "cc_node/manual_actionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'manual_action-request)))
  "Returns string type for a service object of type 'manual_action-request"
  "cc_node/manual_actionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<manual_action-request>)))
  "Returns md5sum for a message object of type '<manual_action-request>"
  "96b258534bcb1e3eb6622e57cbccfdc8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'manual_action-request)))
  "Returns md5sum for a message object of type 'manual_action-request"
  "96b258534bcb1e3eb6622e57cbccfdc8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<manual_action-request>)))
  "Returns full string definition for message of type '<manual_action-request>"
  (cl:format cl:nil "string m_action_type~%int64 m_action_val~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'manual_action-request)))
  "Returns full string definition for message of type 'manual_action-request"
  (cl:format cl:nil "string m_action_type~%int64 m_action_val~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <manual_action-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'm_action_type))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <manual_action-request>))
  "Converts a ROS message object to a list"
  (cl:list 'manual_action-request
    (cl:cons ':m_action_type (m_action_type msg))
    (cl:cons ':m_action_val (m_action_val msg))
))
;//! \htmlinclude manual_action-response.msg.html

(cl:defclass <manual_action-response> (roslisp-msg-protocol:ros-message)
  ((m_action_status
    :reader m_action_status
    :initarg :m_action_status
    :type cl:integer
    :initform 0))
)

(cl:defclass manual_action-response (<manual_action-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <manual_action-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'manual_action-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cc_node-srv:<manual_action-response> is deprecated: use cc_node-srv:manual_action-response instead.")))

(cl:ensure-generic-function 'm_action_status-val :lambda-list '(m))
(cl:defmethod m_action_status-val ((m <manual_action-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cc_node-srv:m_action_status-val is deprecated.  Use cc_node-srv:m_action_status instead.")
  (m_action_status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <manual_action-response>) ostream)
  "Serializes a message object of type '<manual_action-response>"
  (cl:let* ((signed (cl:slot-value msg 'm_action_status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <manual_action-response>) istream)
  "Deserializes a message object of type '<manual_action-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'm_action_status) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<manual_action-response>)))
  "Returns string type for a service object of type '<manual_action-response>"
  "cc_node/manual_actionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'manual_action-response)))
  "Returns string type for a service object of type 'manual_action-response"
  "cc_node/manual_actionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<manual_action-response>)))
  "Returns md5sum for a message object of type '<manual_action-response>"
  "96b258534bcb1e3eb6622e57cbccfdc8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'manual_action-response)))
  "Returns md5sum for a message object of type 'manual_action-response"
  "96b258534bcb1e3eb6622e57cbccfdc8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<manual_action-response>)))
  "Returns full string definition for message of type '<manual_action-response>"
  (cl:format cl:nil "int64 m_action_status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'manual_action-response)))
  "Returns full string definition for message of type 'manual_action-response"
  (cl:format cl:nil "int64 m_action_status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <manual_action-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <manual_action-response>))
  "Converts a ROS message object to a list"
  (cl:list 'manual_action-response
    (cl:cons ':m_action_status (m_action_status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'manual_action)))
  'manual_action-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'manual_action)))
  'manual_action-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'manual_action)))
  "Returns string type for a service object of type '<manual_action>"
  "cc_node/manual_action")