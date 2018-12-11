; Auto-generated. Do not edit!


(cl:in-package mission_node-srv)


;//! \htmlinclude list_missions-request.msg.html

(cl:defclass <list_missions-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass list_missions-request (<list_missions-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <list_missions-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'list_missions-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mission_node-srv:<list_missions-request> is deprecated: use mission_node-srv:list_missions-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <list_missions-request>) ostream)
  "Serializes a message object of type '<list_missions-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <list_missions-request>) istream)
  "Deserializes a message object of type '<list_missions-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<list_missions-request>)))
  "Returns string type for a service object of type '<list_missions-request>"
  "mission_node/list_missionsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'list_missions-request)))
  "Returns string type for a service object of type 'list_missions-request"
  "mission_node/list_missionsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<list_missions-request>)))
  "Returns md5sum for a message object of type '<list_missions-request>"
  "3d952d9b438834ab872583b9374911ec")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'list_missions-request)))
  "Returns md5sum for a message object of type 'list_missions-request"
  "3d952d9b438834ab872583b9374911ec")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<list_missions-request>)))
  "Returns full string definition for message of type '<list_missions-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'list_missions-request)))
  "Returns full string definition for message of type 'list_missions-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <list_missions-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <list_missions-request>))
  "Converts a ROS message object to a list"
  (cl:list 'list_missions-request
))
;//! \htmlinclude list_missions-response.msg.html

(cl:defclass <list_missions-response> (roslisp-msg-protocol:ros-message)
  ((mission_list
    :reader mission_list
    :initarg :mission_list
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass list_missions-response (<list_missions-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <list_missions-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'list_missions-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mission_node-srv:<list_missions-response> is deprecated: use mission_node-srv:list_missions-response instead.")))

(cl:ensure-generic-function 'mission_list-val :lambda-list '(m))
(cl:defmethod mission_list-val ((m <list_missions-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mission_node-srv:mission_list-val is deprecated.  Use mission_node-srv:mission_list instead.")
  (mission_list m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <list_missions-response>) ostream)
  "Serializes a message object of type '<list_missions-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'mission_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'mission_list))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <list_missions-response>) istream)
  "Deserializes a message object of type '<list_missions-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'mission_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'mission_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<list_missions-response>)))
  "Returns string type for a service object of type '<list_missions-response>"
  "mission_node/list_missionsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'list_missions-response)))
  "Returns string type for a service object of type 'list_missions-response"
  "mission_node/list_missionsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<list_missions-response>)))
  "Returns md5sum for a message object of type '<list_missions-response>"
  "3d952d9b438834ab872583b9374911ec")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'list_missions-response)))
  "Returns md5sum for a message object of type 'list_missions-response"
  "3d952d9b438834ab872583b9374911ec")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<list_missions-response>)))
  "Returns full string definition for message of type '<list_missions-response>"
  (cl:format cl:nil "string[] mission_list~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'list_missions-response)))
  "Returns full string definition for message of type 'list_missions-response"
  (cl:format cl:nil "string[] mission_list~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <list_missions-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'mission_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <list_missions-response>))
  "Converts a ROS message object to a list"
  (cl:list 'list_missions-response
    (cl:cons ':mission_list (mission_list msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'list_missions)))
  'list_missions-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'list_missions)))
  'list_missions-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'list_missions)))
  "Returns string type for a service object of type '<list_missions>"
  "mission_node/list_missions")