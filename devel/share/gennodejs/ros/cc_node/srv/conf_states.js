// Auto-generated. Do not edit!

// (in-package cc_node.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class conf_statesRequest {
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
    // Serializes a message object of type conf_statesRequest
    // Serialize message field [airborne]
    bufferOffset = _serializer.bool(obj.airborne, buffer, bufferOffset);
    // Serialize message field [in_mission]
    bufferOffset = _serializer.bool(obj.in_mission, buffer, bufferOffset);
    // Serialize message field [landing_phase]
    bufferOffset = _serializer.bool(obj.landing_phase, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type conf_statesRequest
    let len;
    let data = new conf_statesRequest(null);
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
    // Returns string type for a service object
    return 'cc_node/conf_statesRequest';
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
    const resolved = new conf_statesRequest(null);
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

class conf_statesResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type conf_statesResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type conf_statesResponse
    let len;
    let data = new conf_statesResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cc_node/conf_statesResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '358e233cde0c8a8bcfea4ce193f8fc15';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new conf_statesResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    return resolved;
    }
};

module.exports = {
  Request: conf_statesRequest,
  Response: conf_statesResponse,
  md5sum() { return '41b8919b25873c4fbe3311c2af4f962d'; },
  datatype() { return 'cc_node/conf_states'; }
};
