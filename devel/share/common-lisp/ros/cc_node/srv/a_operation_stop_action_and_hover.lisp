; Auto-generated. Do not edit!


(cl:in-package cc_node-srv)


;//! \htmlinclude a_operation_stop_action_and_hover-request.msg.html

(cl:defclass <a_operation_stop_action_and_hover-request> (roslisp-msg-protocol:ros-message)
  ((a_operation_pausing_reason
    :reader a_operation_pausing_reason
    :initarg :a_operation_pausing_reason
    :type cl:string
    :initform ""))
)

(cl:defclass a_operation_stop_action_and_hover-request (<a_operation_stop_action_and_hover-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <a_operation_stop_action_and_hover-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'a_operation_stop_action_and_hover-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cc_node-srv:<a_operation_stop_action_and_hover-request> is deprecated: use cc_node-srv:a_operation_stop_action_and_hover-request instead.")))

(cl:ensure-generic-function 'a_operation_pausing_reason-val :lambda-list '(m))
(cl:defmethod a_operation_pausing_reason-val ((m <a_operation_stop_action_and_hover-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cc_node-srv:a_operation_pausing_reason-val is deprecated.  Use cc_node-srv:a_operation_pausing_reason instead.")
  (a_operation_pausing_reason m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <a_operation_stop_action_and_hover-request>) ostream)
  "Serializes a message object of type '<a_operation_stop_action_and_hover-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'a_operation_pausing_reason))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'a_operation_pausing_reason))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <a_operation_stop_action_and_hover-request>) istream)
  "Deserializes a message object of type '<a_operation_stop_action_and_hover-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'a_operation_pausing_reason) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'a_operation_pausing_reason) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<a_operation_stop_action_and_hover-request>)))
  "Returns string type for a service object of type '<a_operation_stop_action_and_hover-request>"
  "cc_node/a_operation_stop_action_and_hoverRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'a_operation_stop_action_and_hover-request)))
  "Returns string type for a service object of type 'a_operation_stop_action_and_hover-request"
  "cc_node/a_operation_stop_action_and_hoverRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<a_operation_stop_action_and_hover-request>)))
  "Returns md5sum for a message object of type '<a_operation_stop_action_and_hover-request>"
  "9f7e3069e3c41eb7fbdf0bd3a0382e98")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'a_operation_stop_action_and_hover-request)))
  "Returns md5sum for a message object of type 'a_operation_stop_action_and_hover-request"
  "9f7e3069e3c41eb7fbdf0bd3a0382e98")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<a_operation_stop_action_and_hover-request>)))
  "Returns full string definition for message of type '<a_operation_stop_action_and_hover-request>"
  (cl:format cl:nil "string a_operation_pausing_reason~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'a_operation_stop_action_and_hover-request)))
  "Returns full string definition for message of type 'a_operation_stop_action_and_hover-request"
  (cl:format cl:nil "string a_operation_pausing_reason~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <a_operation_stop_action_and_hover-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'a_operation_pausing_reason))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <a_operation_stop_action_and_hover-request>))
  "Converts a ROS message object to a list"
  (cl:list 'a_operation_stop_action_and_hover-request
    (cl:cons ':a_operation_pausing_reason (a_operation_pausing_reason msg))
))
;//! \htmlinclude a_operation_stop_action_and_hover-response.msg.html

(cl:defclass <a_operation_stop_action_and_hover-response> (roslisp-msg-protocol:ros-message)
  ((a_operation_status
    :reader a_operation_status
    :initarg :a_operation_status
    :type cl:integer
    :initform 0))
)

(cl:defclass a_operation_stop_action_and_hover-response (<a_operation_stop_action_and_hover-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <a_operation_stop_action_and_hover-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'a_operation_stop_action_and_hover-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cc_node-srv:<a_operation_stop_action_and_hover-response> is deprecated: use cc_node-srv:a_operation_stop_action_and_hover-response instead.")))

(cl:ensure-generic-function 'a_operation_status-val :lambda-list '(m))
(cl:defmethod a_operation_status-val ((m <a_operation_stop_action_and_hover-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cc_node-srv:a_operation_status-val is deprecated.  Use cc_node-srv:a_operation_status instead.")
  (a_operation_status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <a_operation_stop_action_and_hover-response>) ostream)
  "Serializes a message object of type '<a_operation_stop_action_and_hover-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <a_operation_stop_action_and_hover-response>) istream)
  "Deserializes a message object of type '<a_operation_stop_action_and_hover-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<a_operation_stop_action_and_hover-response>)))
  "Returns string type for a service object of type '<a_operation_stop_action_and_hover-response>"
  "cc_node/a_operation_stop_action_and_hoverResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'a_operation_stop_action_and_hover-response)))
  "Returns string type for a service object of type 'a_operation_stop_action_and_hover-response"
  "cc_node/a_operation_stop_action_and_hoverResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<a_operation_stop_action_and_hover-response>)))
  "Returns md5sum for a message object of type '<a_operation_stop_action_and_hover-response>"
  "9f7e3069e3c41eb7fbdf0bd3a0382e98")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'a_operation_stop_action_and_hover-response)))
  "Returns md5sum for a message object of type 'a_operation_stop_action_and_hover-response"
  "9f7e3069e3c41eb7fbdf0bd3a0382e98")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<a_operation_stop_action_and_hover-response>)))
  "Returns full string definition for message of type '<a_operation_stop_action_and_hover-response>"
  (cl:format cl:nil "int64 a_operation_status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'a_operation_stop_action_and_hover-response)))
  "Returns full string definition for message of type 'a_operation_stop_action_and_hover-response"
  (cl:format cl:nil "int64 a_operation_status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <a_operation_stop_action_and_hover-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <a_operation_stop_action_and_hover-response>))
  "Converts a ROS message object to a list"
  (cl:list 'a_operation_stop_action_and_hover-response
    (cl:cons ':a_operation_status (a_operation_status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'a_operation_stop_action_and_hover)))
  'a_operation_stop_action_and_hover-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'a_operation_stop_action_and_hover)))
  'a_operation_stop_action_and_hover-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'a_operation_stop_action_and_hover)))
  "Returns string type for a service object of type '<a_operation_stop_action_and_hover>"
  "cc_node/a_operation_stop_action_and_hover")