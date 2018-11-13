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

class a_operation_stop_action_and_hoverRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.a_operation_pausing_reason = null;
    }
    else {
      if (initObj.hasOwnProperty('a_operation_pausing_reason')) {
        this.a_operation_pausing_reason = initObj.a_operation_pausing_reason
      }
      else {
        this.a_operation_pausing_reason = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type a_operation_stop_action_and_hoverRequest
    // Serialize message field [a_operation_pausing_reason]
    bufferOffset = _serializer.string(obj.a_operation_pausing_reason, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type a_operation_stop_action_and_hoverRequest
    let len;
    let data = new a_operation_stop_action_and_hoverRequest(null);
    // Deserialize message field [a_operation_pausing_reason]
    data.a_operation_pausing_reason = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.a_operation_pausing_reason.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cc_node/a_operation_stop_action_and_hoverRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '919e64bcc2322d106fe256f8b10a1fe1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string a_operation_pausing_reason
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new a_operation_stop_action_and_hoverRequest(null);
    if (msg.a_operation_pausing_reason !== undefined) {
      resolved.a_operation_pausing_reason = msg.a_operation_pausing_reason;
    }
    else {
      resolved.a_operation_pausing_reason = ''
    }

    return resolved;
    }
};

class a_operation_stop_action_and_hoverResponse {
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
    // Serializes a message object of type a_operation_stop_action_and_hoverResponse
    // Serialize message field [a_operation_status]
    bufferOffset = _serializer.int64(obj.a_operation_status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type a_operation_stop_action_and_hoverResponse
    let len;
    let data = new a_operation_stop_action_and_hoverResponse(null);
    // Deserialize message field [a_operation_status]
    data.a_operation_status = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cc_node/a_operation_stop_action_and_hoverResponse';
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
    const resolved = new a_operation_stop_action_and_hoverResponse(null);
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
  Request: a_operation_stop_action_and_hoverRequest,
  Response: a_operation_stop_action_and_hoverResponse,
  md5sum() { return '9f7e3069e3c41eb7fbdf0bd3a0382e98'; },
  datatype() { return 'cc_node/a_operation_stop_action_and_hover'; }
};
