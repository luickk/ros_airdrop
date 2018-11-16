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
    }
    else {
      if (initObj.hasOwnProperty('mission_status')) {
        this.mission_status = initObj.mission_status
      }
      else {
        this.mission_status = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type start_missionResponse
    // Serialize message field [mission_status]
    bufferOffset = _serializer.int64(obj.mission_status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type start_missionResponse
    let len;
    let data = new start_missionResponse(null);
    // Deserialize message field [mission_status]
    data.mission_status = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mission_node/start_missionResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c59dae9ebc238d37356f7d711e72da76';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 mission_status
    
    
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

    return resolved;
    }
};

module.exports = {
  Request: start_missionRequest,
  Response: start_missionResponse,
  md5sum() { return 'c1bb7be27d31f8856aed46e2dd0be34b'; },
  datatype() { return 'mission_node/start_mission'; }
};
