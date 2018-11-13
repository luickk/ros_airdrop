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

class a_operation_liftoffRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.a_operation_takeoff_height = null;
    }
    else {
      if (initObj.hasOwnProperty('a_operation_takeoff_height')) {
        this.a_operation_takeoff_height = initObj.a_operation_takeoff_height
      }
      else {
        this.a_operation_takeoff_height = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type a_operation_liftoffRequest
    // Serialize message field [a_operation_takeoff_height]
    bufferOffset = _serializer.int64(obj.a_operation_takeoff_height, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type a_operation_liftoffRequest
    let len;
    let data = new a_operation_liftoffRequest(null);
    // Deserialize message field [a_operation_takeoff_height]
    data.a_operation_takeoff_height = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cc_node/a_operation_liftoffRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '970996ad1e28bb89de54085887842edc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 a_operation_takeoff_height
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new a_operation_liftoffRequest(null);
    if (msg.a_operation_takeoff_height !== undefined) {
      resolved.a_operation_takeoff_height = msg.a_operation_takeoff_height;
    }
    else {
      resolved.a_operation_takeoff_height = 0
    }

    return resolved;
    }
};

class a_operation_liftoffResponse {
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
    // Serializes a message object of type a_operation_liftoffResponse
    // Serialize message field [a_operation_status]
    bufferOffset = _serializer.int64(obj.a_operation_status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type a_operation_liftoffResponse
    let len;
    let data = new a_operation_liftoffResponse(null);
    // Deserialize message field [a_operation_status]
    data.a_operation_status = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cc_node/a_operation_liftoffResponse';
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
    const resolved = new a_operation_liftoffResponse(null);
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
  Request: a_operation_liftoffRequest,
  Response: a_operation_liftoffResponse,
  md5sum() { return '343f536d7b1f038b89dbbbafadb1a351'; },
  datatype() { return 'cc_node/a_operation_liftoff'; }
};
