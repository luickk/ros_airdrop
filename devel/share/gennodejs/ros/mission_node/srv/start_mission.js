// Auto-generated. Do not edit!

// (in-package mission_node.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class start_missionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.mission_name = null;
    }
    else {
      if (initObj.hasOwnProperty('mission_name')) {
        this.mission_name = initObj.mission_name
      }
      else {
        this.mission_name = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type start_missionRequest
    // Serialize message field [mission_name]
    bufferOffset = _serializer.string(obj.mission_name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type start_missionRequest
    let len;
    let data = new start_missionRequest(null);
    // Deserialize message field [mission_name]
    data.mission_name = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.mission_name.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mission_node/start_missionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '58d2a351cca0e183374ddcd0f9020808';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string mission_name
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new start_missionRequest(null);
    if (msg.mission_name !== undefined) {
      resolved.mission_name = msg.mission_name;
    }
    else {
      resolved.mission_name = ''
    }

    return resolved;
    }
};

class start_missionResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.mission_status = null;
      this.operation_status = null;
      this.action_status = null;
    }
    else {
      if (initObj.hasOwnProperty('mission_status')) {
        this.mission_status = initObj.mission_status
      }
      else {
        this.mission_status = 0;
      }
      if (initObj.hasOwnProperty('operation_status')) {
        this.operation_status = initObj.operation_status
      }
      else {
        this.operation_status = 0;
      }
      if (initObj.hasOwnProperty('action_status')) {
        this.action_status = initObj.action_status
      }
      else {
        this.action_status = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type start_missionResponse
    // Serialize message field [mission_status]
    bufferOffset = _serializer.int64(obj.mission_status, buffer, bufferOffset);
    // Serialize message field [operation_status]
    bufferOffset = _serializer.int64(obj.operation_status, buffer, bufferOffset);
    // Serialize message field [action_status]
    bufferOffset = _serializer.int64(obj.action_status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type start_missionResponse
    let len;
    let data = new start_missionResponse(null);
    // Deserialize message field [mission_status]
    data.mission_status = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [operation_status]
    data.operation_status = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [action_status]
    data.action_status = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mission_node/start_missionResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a58427b0fb5f9b69a1a62de1cf1c546b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 mission_status
    int64 operation_status
    int64 action_status
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new start_missionResponse(null);
    if (msg.mission_status !== undefined) {
      resolved.mission_status = msg.mission_status;
    }
    else {
      resolved.mission_status = 0
    }

    if (msg.operation_status !== undefined) {
      resolved.operation_status = msg.operation_status;
    }
    else {
      resolved.operation_status = 0
    }

    if (msg.action_status !== undefined) {
      resolved.action_status = msg.action_status;
    }
    else {
      resolved.action_status = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: start_missionRequest,
  Response: start_missionResponse,
  md5sum() { return 'fe261445a9489aed43e3808ba8261eed'; },
  datatype() { return 'mission_node/start_mission'; }
};
