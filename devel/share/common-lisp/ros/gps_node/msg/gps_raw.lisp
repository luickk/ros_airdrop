; Auto-generated. Do not edit!


(cl:in-package gps_node-msg)


;//! \htmlinclude gps_raw.msg.html

(cl:defclass <gps_raw> (roslisp-msg-protocol:ros-message)
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
    :initform 0))
)

(cl:defclass gps_raw (<gps_raw>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <gps_raw>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'gps_raw)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gps_node-msg:<gps_raw> is deprecated: use gps_node-msg:gps_raw instead.")))

(cl:ensure-generic-function 'gps_sats-val :lambda-list '(m))
(cl:defmethod gps_sats-val ((m <gps_raw>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_node-msg:gps_sats-val is deprecated.  Use gps_node-msg:gps_sats instead.")
  (gps_sats m))

(cl:ensure-generic-function 'lat-val :lambda-list '(m))
(cl:defmethod lat-val ((m <gps_raw>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_node-msg:lat-val is deprecated.  Use gps_node-msg:lat instead.")
  (lat m))

(cl:ensure-generic-function 'lon-val :lambda-list '(m))
(cl:defmethod lon-val ((m <gps_raw>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_node-msg:lon-val is deprecated.  Use gps_node-msg:lon instead.")
  (lon m))

(cl:ensure-generic-function 'heading-val :lambda-list '(m))
(cl:defmethod heading-val ((m <gps_raw>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_node-msg:heading-val is deprecated.  Use gps_node-msg:heading instead.")
  (heading m))

(cl:ensure-generic-function 'alt-val :lambda-list '(m))
(cl:defmethod alt-val ((m <gps_raw>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_node-msg:alt-val is deprecated.  Use gps_node-msg:alt instead.")
  (alt m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <gps_raw>) ostream)
  "Serializes a message object of type '<gps_raw>"
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
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <gps_raw>) istream)
  "Deserializes a message object of type '<gps_raw>"
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<gps_raw>)))
  "Returns string type for a message object of type '<gps_raw>"
  "gps_node/gps_raw")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'gps_raw)))
  "Returns string type for a message object of type 'gps_raw"
  "gps_node/gps_raw")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<gps_raw>)))
  "Returns md5sum for a message object of type '<gps_raw>"
  "b370abee1ae60162d73fe65bb7c660bd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'gps_raw)))
  "Returns md5sum for a message object of type 'gps_raw"
  "b370abee1ae60162d73fe65bb7c660bd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<gps_raw>)))
  "Returns full string definition for message of type '<gps_raw>"
  (cl:format cl:nil "int32 gps_sats~%float32 lat~%float32 lon~%int32 heading~%int32 alt~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'gps_raw)))
  "Returns full string definition for message of type 'gps_raw"
  (cl:format cl:nil "int32 gps_sats~%float32 lat~%float32 lon~%int32 heading~%int32 alt~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <gps_raw>))
  (cl:+ 0
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <gps_raw>))
  "Converts a ROS message object to a list"
  (cl:list 'gps_raw
    (cl:cons ':gps_sats (gps_sats msg))
    (cl:cons ':lat (lat msg))
    (cl:cons ':lon (lon msg))
    (cl:cons ':heading (heading msg))
    (cl:cons ':alt (alt msg))
))
