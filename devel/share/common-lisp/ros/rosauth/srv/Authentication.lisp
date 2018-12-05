; Auto-generated. Do not edit!


(cl:in-package rosauth-srv)


;//! \htmlinclude Authentication-request.msg.html

(cl:defclass <Authentication-request> (roslisp-msg-protocol:ros-message)
  ((mac
    :reader mac
    :initarg :mac
    :type cl:string
    :initform "")
   (client
    :reader client
    :initarg :client
    :type cl:string
    :initform "")
   (dest
    :reader dest
    :initarg :dest
    :type cl:string
    :initform "")
   (rand
    :reader rand
    :initarg :rand
    :type cl:string
    :initform "")
   (t
    :reader t
    :initarg :t
    :type cl:real
    :initform 0)
   (level
    :reader level
    :initarg :level
    :type cl:string
    :initform "")
   (end
    :reader end
    :initarg :end
    :type cl:real
    :initform 0))
)

(cl:defclass Authentication-request (<Authentication-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Authentication-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Authentication-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosauth-srv:<Authentication-request> is deprecated: use rosauth-srv:Authentication-request instead.")))

(cl:ensure-generic-function 'mac-val :lambda-list '(m))
(cl:defmethod mac-val ((m <Authentication-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosauth-srv:mac-val is deprecated.  Use rosauth-srv:mac instead.")
  (mac m))

(cl:ensure-generic-function 'client-val :lambda-list '(m))
(cl:defmethod client-val ((m <Authentication-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosauth-srv:client-val is deprecated.  Use rosauth-srv:client instead.")
  (client m))

(cl:ensure-generic-function 'dest-val :lambda-list '(m))
(cl:defmethod dest-val ((m <Authentication-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosauth-srv:dest-val is deprecated.  Use rosauth-srv:dest instead.")
  (dest m))

(cl:ensure-generic-function 'rand-val :lambda-list '(m))
(cl:defmethod rand-val ((m <Authentication-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosauth-srv:rand-val is deprecated.  Use rosauth-srv:rand instead.")
  (rand m))

(cl:ensure-generic-function 't-val :lambda-list '(m))
(cl:defmethod t-val ((m <Authentication-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosauth-srv:t-val is deprecated.  Use rosauth-srv:t instead.")
  (t m))

(cl:ensure-generic-function 'level-val :lambda-list '(m))
(cl:defmethod level-val ((m <Authentication-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosauth-srv:level-val is deprecated.  Use rosauth-srv:level instead.")
  (level m))

(cl:ensure-generic-function 'end-val :lambda-list '(m))
(cl:defmethod end-val ((m <Authentication-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosauth-srv:end-val is deprecated.  Use rosauth-srv:end instead.")
  (end m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Authentication-request>) ostream)
  "Serializes a message object of type '<Authentication-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'mac))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'mac))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'client))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'client))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'dest))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'dest))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'rand))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'rand))
  (cl:let ((__sec (cl:floor (cl:slot-value msg 't)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 't) (cl:floor (cl:slot-value msg 't)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'level))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'level))
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'end)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'end) (cl:floor (cl:slot-value msg 'end)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Authentication-request>) istream)
  "Deserializes a message object of type '<Authentication-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mac) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'mac) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'client) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'client) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'dest) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'dest) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rand) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'rand) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 't) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'level) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'level) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'end) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Authentication-request>)))
  "Returns string type for a service object of type '<Authentication-request>"
  "rosauth/AuthenticationRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Authentication-request)))
  "Returns string type for a service object of type 'Authentication-request"
  "rosauth/AuthenticationRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Authentication-request>)))
  "Returns md5sum for a message object of type '<Authentication-request>"
  "0297b5bdd9c066699bfaf0157aad17e7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Authentication-request)))
  "Returns md5sum for a message object of type 'Authentication-request"
  "0297b5bdd9c066699bfaf0157aad17e7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Authentication-request>)))
  "Returns full string definition for message of type '<Authentication-request>"
  (cl:format cl:nil "~%string mac~%~%string client~%~%string dest~%~%string rand~%~%time t~%~%string level~%~%time end~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Authentication-request)))
  "Returns full string definition for message of type 'Authentication-request"
  (cl:format cl:nil "~%string mac~%~%string client~%~%string dest~%~%string rand~%~%time t~%~%string level~%~%time end~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Authentication-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'mac))
     4 (cl:length (cl:slot-value msg 'client))
     4 (cl:length (cl:slot-value msg 'dest))
     4 (cl:length (cl:slot-value msg 'rand))
     8
     4 (cl:length (cl:slot-value msg 'level))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Authentication-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Authentication-request
    (cl:cons ':mac (mac msg))
    (cl:cons ':client (client msg))
    (cl:cons ':dest (dest msg))
    (cl:cons ':rand (rand msg))
    (cl:cons ':t (t msg))
    (cl:cons ':level (level msg))
    (cl:cons ':end (end msg))
))
;//! \htmlinclude Authentication-response.msg.html

(cl:defclass <Authentication-response> (roslisp-msg-protocol:ros-message)
  ((authenticated
    :reader authenticated
    :initarg :authenticated
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Authentication-response (<Authentication-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Authentication-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Authentication-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosauth-srv:<Authentication-response> is deprecated: use rosauth-srv:Authentication-response instead.")))

(cl:ensure-generic-function 'authenticated-val :lambda-list '(m))
(cl:defmethod authenticated-val ((m <Authentication-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosauth-srv:authenticated-val is deprecated.  Use rosauth-srv:authenticated instead.")
  (authenticated m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Authentication-response>) ostream)
  "Serializes a message object of type '<Authentication-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'authenticated) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Authentication-response>) istream)
  "Deserializes a message object of type '<Authentication-response>"
    (cl:setf (cl:slot-value msg 'authenticated) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Authentication-response>)))
  "Returns string type for a service object of type '<Authentication-response>"
  "rosauth/AuthenticationResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Authentication-response)))
  "Returns string type for a service object of type 'Authentication-response"
  "rosauth/AuthenticationResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Authentication-response>)))
  "Returns md5sum for a message object of type '<Authentication-response>"
  "0297b5bdd9c066699bfaf0157aad17e7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Authentication-response)))
  "Returns md5sum for a message object of type 'Authentication-response"
  "0297b5bdd9c066699bfaf0157aad17e7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Authentication-response>)))
  "Returns full string definition for message of type '<Authentication-response>"
  (cl:format cl:nil "~%bool authenticated~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Authentication-response)))
  "Returns full string definition for message of type 'Authentication-response"
  (cl:format cl:nil "~%bool authenticated~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Authentication-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Authentication-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Authentication-response
    (cl:cons ':authenticated (authenticated msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Authentication)))
  'Authentication-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Authentication)))
  'Authentication-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Authentication)))
  "Returns string type for a service object of type '<Authentication>"
  "rosauth/Authentication")