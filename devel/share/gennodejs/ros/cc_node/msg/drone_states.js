// Auto-generated. Do not edit!

// (in-package cc_node.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class drone_states {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.airborne = null;
      this.in_mission = null;
      this.landing_phase = null;
    }
    else {
      if (initObj.hasOwnProperty('airborne')) {
        this.airborne = initObj.airborne
      }
      else {
        this.airborne = false;
      }
      if (initObj.hasOwnProperty('in_mission')) {
        this.in_mission = initObj.in_mission
      }
      else {
        this.in_mission = false;
      }
      if (initObj.hasOwnProperty('landing_phase')) {
        this.landing_phase = initObj.landing_phase
      }
      else {
        this.landing_phase = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type drone_states
    // Serialize message field [airborne]
    bufferOffset = _serializer.bool(obj.airborne, buffer, bufferOffset);
    // Serialize message field [in_mission]
    bufferOffset = _serializer.bool(obj.in_mission, buffer, bufferOffset);
    // Serialize message field [landing_phase]
    bufferOffset = _serializer.bool(obj.landing_phase, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type drone_states
    let len;
    let data = new drone_states(null);
    // Deserialize message field [airborne]
    data.airborne = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [in_mission]
    data.in_mission = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [landing_phase]
    data.landing_phase = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 3;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cc_node/drone_states';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1af6d97362fd29242bfa3658b1190ad5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool airborne
    bool in_mission
    bool landing_phase
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new drone_states(null);
    if (msg.airborne !== undefined) {
      resolved.airborne = msg.airborne;
    }
    else {
      resolved.airborne = false
    }

    if (msg.in_mission !== undefined) {
      resolved.in_mission = msg.in_mission;
    }
    else {
      resolved.in_mission = false
    }

    if (msg.landing_phase !== undefined) {
      resolved.landing_phase = msg.landing_phase;
    }
    else {
      resolved.landing_phase = false
    }

    return resolved;
    }
};

module.exports = drone_states;
