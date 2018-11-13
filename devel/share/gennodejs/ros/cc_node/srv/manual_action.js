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

class manual_actionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.m_action_type = null;
      this.m_action_val = null;
    }
    else {
      if (initObj.hasOwnProperty('m_action_type')) {
        this.m_action_type = initObj.m_action_type
      }
      else {
        this.m_action_type = '';
      }
      if (initObj.hasOwnProperty('m_action_val')) {
        this.m_action_val = initObj.m_action_val
      }
      else {
        this.m_action_val = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type manual_actionRequest
    // Serialize message field [m_action_type]
    bufferOffset = _serializer.string(obj.m_action_type, buffer, bufferOffset);
    // Serialize message field [m_action_val]
    bufferOffset = _serializer.int64(obj.m_action_val, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type manual_actionRequest
    let len;
    let data = new manual_actionRequest(null);
    // Deserialize message field [m_action_type]
    data.m_action_type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [m_action_val]
    data.m_action_val = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.m_action_type.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cc_node/manual_actionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3e8a3f03380007b4ecd7a887a341a5ae';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string m_action_type
    int64 m_action_val
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new manual_actionRequest(null);
    if (msg.m_action_type !== undefined) {
      resolved.m_action_type = msg.m_action_type;
    }
    else {
      resolved.m_action_type = ''
    }

    if (msg.m_action_val !== undefined) {
      resolved.m_action_val = msg.m_action_val;
    }
    else {
      resolved.m_action_val = 0
    }

    return resolved;
    }
};

class manual_actionResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.m_action_status = null;
    }
    else {
      if (initObj.hasOwnProperty('m_action_status')) {
        this.m_action_status = initObj.m_action_status
      }
      else {
        this.m_action_status = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type manual_actionResponse
    // Serialize message field [m_action_status]
    bufferOffset = _serializer.int64(obj.m_action_status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type manual_actionResponse
    let len;
    let data = new manual_actionResponse(null);
    // Deserialize message field [m_action_status]
    data.m_action_status = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cc_node/manual_actionResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '39c2bad13e87126a7320b7f46f4184eb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 m_action_status
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new manual_actionResponse(null);
    if (msg.m_action_status !== undefined) {
      resolved.m_action_status = msg.m_action_status;
    }
    else {
      resolved.m_action_status = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: manual_actionRequest,
  Response: manual_actionResponse,
  md5sum() { return '96b258534bcb1e3eb6622e57cbccfdc8'; },
  datatype() { return 'cc_node/manual_action'; }
};
