; Auto-generated. Do not edit!


(cl:in-package cc_node-msg)


;//! \htmlinclude drone_states.msg.html

(cl:defclass <drone_states> (roslisp-msg-protocol:ros-message)
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

(cl:defclass drone_states (<drone_states>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <drone_states>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'drone_states)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cc_node-msg:<drone_states> is deprecated: use cc_node-msg:drone_states instead.")))

(cl:ensure-generic-function 'airborne-val :lambda-list '(m))
(cl:defmethod airborne-val ((m <drone_states>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cc_node-msg:airborne-val is deprecated.  Use cc_node-msg:airborne instead.")
  (airborne m))

(cl:ensure-generic-function 'in_mission-val :lambda-list '(m))
(cl:defmethod in_mission-val ((m <drone_states>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cc_node-msg:in_mission-val is deprecated.  Use cc_node-msg:in_mission instead.")
  (in_mission m))

(cl:ensure-generic-function 'landing_phase-val :lambda-list '(m))
(cl:defmethod landing_phase-val ((m <drone_states>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cc_node-msg:landing_phase-val is deprecated.  Use cc_node-msg:landing_phase instead.")
  (landing_phase m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <drone_states>) ostream)
  "Serializes a message object of type '<drone_states>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'airborne) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'in_mission) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'landing_phase) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <drone_states>) istream)
  "Deserializes a message object of type '<drone_states>"
    (cl:setf (cl:slot-value msg 'airborne) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'in_mission) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'landing_phase) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<drone_states>)))
  "Returns string type for a message object of type '<drone_states>"
  "cc_node/drone_states")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'drone_states)))
  "Returns string type for a message object of type 'drone_states"
  "cc_node/drone_states")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<drone_states>)))
  "Returns md5sum for a message object of type '<drone_states>"
  "1af6d97362fd29242bfa3658b1190ad5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'drone_states)))
  "Returns md5sum for a message object of type 'drone_states"
  "1af6d97362fd29242bfa3658b1190ad5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<drone_states>)))
  "Returns full string definition for message of type '<drone_states>"
  (cl:format cl:nil "bool airborne~%bool in_mission~%bool landing_phase~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'drone_states)))
  "Returns full string definition for message of type 'drone_states"
  (cl:format cl:nil "bool airborne~%bool in_mission~%bool landing_phase~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <drone_states>))
  (cl:+ 0
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <drone_states>))
  "Converts a ROS message object to a list"
  (cl:list 'drone_states
    (cl:cons ':airborne (airborne msg))
    (cl:cons ':in_mission (in_mission msg))
    (cl:cons ':landing_phase (landing_phase msg))
))
