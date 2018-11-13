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

class a_operation_landingRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.a_operation_landing_reason = null;
    }
    else {
      if (initObj.hasOwnProperty('a_operation_landing_reason')) {
        this.a_operation_landing_reason = initObj.a_operation_landing_reason
      }
      else {
        this.a_operation_landing_reason = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type a_operation_landingRequest
    // Serialize message field [a_operation_landing_reason]
    bufferOffset = _serializer.string(obj.a_operation_landing_reason, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type a_operation_landingRequest
    let len;
    let data = new a_operation_landingRequest(null);
    // Deserialize message field [a_operation_landing_reason]
    data.a_operation_landing_reason = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.a_operation_landing_reason.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cc_node/a_operation_landingRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8d9449150d5fae54194aaadf5d3b93be';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string a_operation_landing_reason
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new a_operation_landingRequest(null);
    if (msg.a_operation_landing_reason !== undefined) {
      resolved.a_operation_landing_reason = msg.a_operation_landing_reason;
    }
    else {
      resolved.a_operation_landing_reason = ''
    }

    return resolved;
    }
};

class a_operation_landingResponse {
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
    // Serializes a message object of type a_operation_landingResponse
    // Serialize message field [a_operation_status]
    bufferOffset = _serializer.int64(obj.a_operation_status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type a_operation_landingResponse
    let len;
    let data = new a_operation_landingResponse(null);
    // Deserialize message field [a_operation_status]
    data.a_operation_status = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cc_node/a_operation_landingResponse';
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
    const resolved = new a_operation_landingResponse(null);
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
  Request: a_operation_landingRequest,
  Response: a_operation_landingResponse,
  md5sum() { return 'fd59bedfcc1f7eb050c1f843ac95cbaa'; },
  datatype() { return 'cc_node/a_operation_landing'; }
};
