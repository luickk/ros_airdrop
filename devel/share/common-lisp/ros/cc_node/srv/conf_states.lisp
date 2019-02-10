; Auto-generated. Do not edit!


(cl:in-package cc_node-srv)


;//! \htmlinclude conf_states-request.msg.html

(cl:defclass <conf_states-request> (roslisp-msg-protocol:ros-message)
  ((airborne
    :reader airborne
    :initarg :airborne
    :type cl:boolean
    :initform cl:nil)
   (in_mission
    :reader in_mission
    :initarg :in_mission
    :type cl:boolean
    :initform cl:nil)
   (landing_phase
    :reader landing_phase
    :initarg :landing_phase
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass conf_states-request (<conf_states-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <conf_states-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'conf_states-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cc_node-srv:<conf_states-request> is deprecated: use cc_node-srv:conf_states-request instead.")))

(cl:ensure-generic-function 'airborne-val :lambda-list '(m))
(cl:defmethod airborne-val ((m <conf_states-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cc_node-srv:airborne-val is deprecated.  Use cc_node-srv:airborne instead.")
  (airborne m))

(cl:ensure-generic-function 'in_mission-val :lambda-list '(m))
(cl:defmethod in_mission-val ((m <conf_states-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cc_node-srv:in_mission-val is deprecated.  Use cc_node-srv:in_mission instead.")
  (in_mission m))

(cl:ensure-generic-function 'landing_phase-val :lambda-list '(m))
(cl:defmethod landing_phase-val ((m <conf_states-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cc_node-srv:landing_phase-val is deprecated.  Use cc_node-srv:landing_phase instead.")
  (landing_phase m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <conf_states-request>) ostream)
  "Serializes a message object of type '<conf_states-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'airborne) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'in_mission) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'landing_phase) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <conf_states-request>) istream)
  "Deserializes a message object of type '<conf_states-request>"
    (cl:setf (cl:slot-value msg 'airborne) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'in_mission) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'landing_phase) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<conf_states-request>)))
  "Returns string type for a service object of type '<conf_states-request>"
  "cc_node/conf_statesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'conf_states-request)))
  "Returns string type for a service object of type 'conf_states-request"
  "cc_node/conf_statesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<conf_states-request>)))
  "Returns md5sum for a message object of type '<conf_states-request>"
  "41b8919b25873c4fbe3311c2af4f962d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'conf_states-request)))
  "Returns md5sum for a message object of type 'conf_states-request"
  "41b8919b25873c4fbe3311c2af4f962d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<conf_states-request>)))
  "Returns full string definition for message of type '<conf_states-request>"
  (cl:format cl:nil "bool airborne~%bool in_mission~%bool landing_phase~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'conf_states-request)))
  "Returns full string definition for message of type 'conf_states-request"
  (cl:format cl:nil "bool airborne~%bool in_mission~%bool landing_phase~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <conf_states-request>))
  (cl:+ 0
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <conf_states-request>))
  "Converts a ROS message object to a list"
  (cl:list 'conf_states-request
    (cl:cons ':airborne (airborne msg))
    (cl:cons ':in_mission (in_mission msg))
    (cl:cons ':landing_phase (landing_phase msg))
))
;//! \htmlinclude conf_states-response.msg.html

(cl:defclass <conf_states-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass conf_states-response (<conf_states-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <conf_states-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'conf_states-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cc_node-srv:<conf_states-response> is deprecated: use cc_node-srv:conf_states-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <conf_states-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cc_node-srv:success-val is deprecated.  Use cc_node-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <conf_states-response>) ostream)
  "Serializes a message object of type '<conf_states-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <conf_states-response>) istream)
  "Deserializes a message object of type '<conf_states-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<conf_states-response>)))
  "Returns string type for a service object of type '<conf_states-response>"
  "cc_node/conf_statesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'conf_states-response)))
  "Returns string type for a service object of type 'conf_states-response"
  "cc_node/conf_statesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<conf_states-response>)))
  "Returns md5sum for a message object of type '<conf_states-response>"
  "41b8919b25873c4fbe3311c2af4f962d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'conf_states-response)))
  "Returns md5sum for a message object of type 'conf_states-response"
  "41b8919b25873c4fbe3311c2af4f962d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<conf_states-response>)))
  "Returns full string definition for message of type '<conf_states-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'conf_states-response)))
  "Returns full string definition for message of type 'conf_states-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <conf_states-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <conf_states-response>))
  "Converts a ROS message object to a list"
  (cl:list 'conf_states-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'conf_states)))
  'conf_states-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'conf_states)))
  'conf_states-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'conf_states)))
  "Returns string type for a service object of type '<conf_states>"
  "cc_node/conf_states")