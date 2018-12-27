; Auto-generated. Do not edit!


(cl:in-package battery_node-msg)


;//! \htmlinclude bat_stat.msg.html

(cl:defclass <bat_stat> (roslisp-msg-protocol:ros-message)
  ((bat_val
    :reader bat_val
    :initarg :bat_val
    :type cl:integer
    :initform 0))
)

(cl:defclass bat_stat (<bat_stat>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <bat_stat>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'bat_stat)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name battery_node-msg:<bat_stat> is deprecated: use battery_node-msg:bat_stat instead.")))

(cl:ensure-generic-function 'bat_val-val :lambda-list '(m))
(cl:defmethod bat_val-val ((m <bat_stat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader battery_node-msg:bat_val-val is deprecated.  Use battery_node-msg:bat_val instead.")
  (bat_val m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <bat_stat>) ostream)
  "Serializes a message object of type '<bat_stat>"
  (cl:let* ((signed (cl:slot-value msg 'bat_val)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <bat_stat>) istream)
  "Deserializes a message object of type '<bat_stat>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'bat_val) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<bat_stat>)))
  "Returns string type for a message object of type '<bat_stat>"
  "battery_node/bat_stat")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'bat_stat)))
  "Returns string type for a message object of type 'bat_stat"
  "battery_node/bat_stat")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<bat_stat>)))
  "Returns md5sum for a message object of type '<bat_stat>"
  "6362255f22432ff23dbe6f399bfa3970")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'bat_stat)))
  "Returns md5sum for a message object of type 'bat_stat"
  "6362255f22432ff23dbe6f399bfa3970")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<bat_stat>)))
  "Returns full string definition for message of type '<bat_stat>"
  (cl:format cl:nil "int32 bat_val~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'bat_stat)))
  "Returns full string definition for message of type 'bat_stat"
  (cl:format cl:nil "int32 bat_val~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <bat_stat>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <bat_stat>))
  "Converts a ROS message object to a list"
  (cl:list 'bat_stat
    (cl:cons ':bat_val (bat_val msg))
))
