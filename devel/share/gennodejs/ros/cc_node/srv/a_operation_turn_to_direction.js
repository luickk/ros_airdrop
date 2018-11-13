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

class a_operation_turn_to_directionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.a_operation_dir_in_deg = null;
    }
    else {
      if (initObj.hasOwnProperty('a_operation_dir_in_deg')) {
        this.a_operation_dir_in_deg = initObj.a_operation_dir_in_deg
      }
      else {
        this.a_operation_dir_in_deg = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type a_operation_turn_to_directionRequest
    // Serialize message field [a_operation_dir_in_deg]
    bufferOffset = _serializer.int64(obj.a_operation_dir_in_deg, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type a_operation_turn_to_directionRequest
    let len;
    let data = new a_operation_turn_to_directionRequest(null);
    // Deserialize message field [a_operation_dir_in_deg]
    data.a_operation_dir_in_deg = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cc_node/a_operation_turn_to_directionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7176d1f65d7902997523f8922d66d296';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 a_operation_dir_in_deg
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new a_operation_turn_to_directionRequest(null);
    if (msg.a_operation_dir_in_deg !== undefined) {
      resolved.a_operation_dir_in_deg = msg.a_operation_dir_in_deg;
    }
    else {
      resolved.a_operation_dir_in_deg = 0
    }

    return resolved;
    }
};

class a_operation_turn_to_directionResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.a_operation_status = null;
    }
    else {
      if (initObj.hasOwnProperty('a_operation_status')) {
        this.a_operation_status = initObj.a_operation_status
      }
      else {
        this.a_operation_status = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type a_operation_turn_to_directionResponse
    // Serialize message field [a_operation_status]
    bufferOffset = _serializer.int64(obj.a_operation_status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type a_operation_turn_to_directionResponse
    let len;
    let data = new a_operation_turn_to_directionResponse(null);
    // Deserialize message field [a_operation_status]
    data.a_operation_status = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cc_node/a_operation_turn_to_directionResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fa4a747d8b0e410755f5b193c983180c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 a_operation_status
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new a_operation_turn_to_directionResponse(null);
    if (msg.a_operation_status !== undefined) {
      resolved.a_operation_status = msg.a_operation_status;
    }
    else {
      resolved.a_operation_status = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: a_operation_turn_to_directionRequest,
  Response: a_operation_turn_to_directionResponse,
  md5sum() { return '04bfe09b9b370af085e1e4ee62512b6d'; },
  datatype() { return 'cc_node/a_operation_turn_to_direction'; }
};
